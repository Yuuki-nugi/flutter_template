import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/model/user/user.dart';
import 'package:flutter_template/provider/usecase_provider.dart';
import 'package:flutter_template/usecase/interface/user_usecase.dart';

class EditProfilePageControllerState {
  EditProfilePageControllerState({
    this.user,
  });
  final User? user;

  EditProfilePageControllerState copyWith({
    User? user,
  }) {
    return EditProfilePageControllerState(
      user: user ?? this.user,
    );
  }
}

class EditProfilePageController
    extends StateNotifier<EditProfilePageControllerState> {
  EditProfilePageController({
    required this.userUseCase,
  }) : super(EditProfilePageControllerState());

  static final provider = StateNotifierProvider<EditProfilePageController,
      EditProfilePageControllerState>((ref) {
    final userUseCase = ref.read(userUseCaseProvider);

    return EditProfilePageController(userUseCase: userUseCase);
  });

  final UserUseCase userUseCase;
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController displayNameController = TextEditingController();

  Future<void> init() async {
    final user = await _fetchUser('1');
    final username = user.username;
    final displayName = user.display_name;

    usernameController.text = username;
    displayNameController.text = displayName;

    state = state.copyWith(user: user);
  }

  Future<User> _fetchUser(String id) async {
    final user = await userUseCase.fetchUser(id);
    return user;
  }

  Future<void> saveProfile({
    required BuildContext context,
  }) async {
    if (state.user == null) {
      throw Exception('User is null');
    }

    // TODO Userモデルを渡すのではなく、更新する値だけを渡す方が良さそう
    final user = User(
        id: state.user!.id,
        username: usernameController.text,
        display_name: displayNameController.text,
        created_at: state.user!.created_at,
        updated_at: null);
    await userUseCase.updateProfile(user);

    Navigator.pop(context);
  }
}
