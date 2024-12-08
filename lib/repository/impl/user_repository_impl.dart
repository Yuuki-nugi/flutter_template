import 'package:flutter_template/model/user/user.dart';
import 'package:flutter_template/repository/interface/user_repository.dart';

class UserRepositoryImpl implements UserRepository {
  @override
  Future<User> getUser(String id) async {
    // Mock implementation
    print("Fetching user with id: $id");
    return User(
      id: id,
      username: 'test_user',
      display_name: 'Test User',
      created_at: DateTime.now(),
      updated_at: DateTime.now(),
    );
  }

  @override
  Future<void> updateUser(User user) async {
    // Mock implementation for update
    await Future.delayed(const Duration(milliseconds: 500));
  }
}
