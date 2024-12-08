import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/repository/impl/user_repository_impl.dart';

final userRepositoryProvider = Provider((ref) => UserRepositoryImpl());
