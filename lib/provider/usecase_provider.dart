import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/provider/repository_provider.dart';
import 'package:flutter_template/usecase/impl/user_usecase_impl.dart';

final userUseCaseProvider = Provider((ref) => UserUseCaseImpl(
      userRepository: ref.read(userRepositoryProvider),
    ));
