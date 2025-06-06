import 'package:fpdart/src/either.dart';
import 'package:youtube/core/error/expection.dart';
import 'package:youtube/core/error/failure.dart';
import 'package:youtube/features/auth/domain/repository/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRepository remoteDataResource;
  const AuthRepositoryImpl(this.remoteDataResource);
  @override
  Future<Either<failure, String>> loginUpwithEmailPassword(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<Either<failure, String>> signUpwithEmailPassword(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final userid = await remoteDataResource.signUpwithEmailPassword(
          name: name, email: email, password: password);
      return right(userid as String);
    } on ServerExpection catch (e) {
      return left(e.message);
    }
  }
}
