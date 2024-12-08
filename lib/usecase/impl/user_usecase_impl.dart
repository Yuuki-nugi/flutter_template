import 'package:flutter_template/model/user/user.dart';
import 'package:flutter_template/repository/interface/user_repository.dart';
import 'package:flutter_template/usecase/interface/user_usecase.dart';

class UserUseCaseImpl implements UserUseCase {
  final UserRepository userRepository;

  UserUseCaseImpl({required this.userRepository});

  @override
  Future<User> fetchUser(String id) {
    return userRepository.getUser(id);
  }

  @override
  Future<void> updateProfile(User user) {
    return userRepository.updateUser(user);
  }
}
