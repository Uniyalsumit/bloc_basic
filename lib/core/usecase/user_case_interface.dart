import 'package:fpdart/fpdart.dart';
import 'package:youtube/core/error/failure.dart';

abstract interface class user_case_interface<Type, Params> {
  Future<Either<failure, Type>> call(Params);
}
