import 'package:flutter_template/model/user/user.dart';

abstract class UserUseCase {
  Future<User> fetchUser(String id);
  Future<void> updateProfile(User user);
}
