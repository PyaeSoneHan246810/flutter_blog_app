import 'package:blog_app/core/error/failure.dart';
import 'package:blog_app/core/usecase/usecase.dart';
import 'package:blog_app/core/common/entities/user.dart';
import 'package:blog_app/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class CurrentUserRetrieval implements Usecase<User, NoParams> {
  final AuthRepository authRepository;
  const CurrentUserRetrieval({required this.authRepository});
  @override
  Future<Either<Failure, User>> call(NoParams params) async {
    return await authRepository.getCurrentUserData();
  }
}