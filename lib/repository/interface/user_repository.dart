import 'package:flutter_template/model/user/user.dart';

abstract class UserRepository {
  Future<User> getUser(String id);
  Future<void> updateUser(User user);
}
