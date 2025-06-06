import 'package:fpdart/fpdart.dart';
import 'package:youtube/core/error/failure.dart';

abstract interface class AuthRepository {
  // function
  Future<Either<failure, String>> signUpwithEmailPassword({
    required String name,
    required String email,
    required String password,
  });
  Future<Either<failure, String>> loginUpwithEmailPassword({
    required String email,
    required String password,
  });
}
