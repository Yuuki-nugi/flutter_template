import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/model/user/user.dart';
import 'package:flutter_template/provider/usecase_provider.dart';
import 'package:flutter_template/usecase/interface/user_usecase.dart';

class ProfilePageControllerState {
  ProfilePageControllerState({this.user});
  final User? user;

  ProfilePageControllerState copyWith({
    User? user,
  }) {
    return ProfilePageControllerState(
      user: user ?? this.user,
    );
  }
}

class ProfilePageController extends StateNotifier<ProfilePageControllerState> {
  ProfilePageController({
    required this.userUseCase,
  }) : super(ProfilePageControllerState());

  static final provider =
      StateNotifierProvider<ProfilePageController, ProfilePageControllerState>(
          (ref) {
    final userUseCase = ref.read(userUseCaseProvider);

    return ProfilePageController(userUseCase: userUseCase);
  });

  final UserUseCase userUseCase;

  Future<void> fetchUser(String id) async {
    final user = await userUseCase.fetchUser(id);
    state = state.copyWith(user: user);
  }
}
