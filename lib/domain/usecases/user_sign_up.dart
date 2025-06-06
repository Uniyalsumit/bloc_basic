import 'package:fpdart/src/either.dart';
import 'package:youtube/core/error/failure.dart';
import 'package:youtube/core/usecase/user_case_interface.dart';
import 'package:youtube/features/auth/domain/repository/auth_repository.dart';

class UserSignUp implements user_case_interface<String, params> {
  final AuthRepository authRepository;
  UserSignUp({required this.authRepository});
  @override
  Future<Either<failure, String>> call(params) async {
    return await authRepository.signUpwithEmailPassword(
        name: params.name, email: params.email, password: params.password);
  }
}

class params {
  final String name;
  final String password;
  final String email;
  params({required this.name, required this.email, required this.password});
}
