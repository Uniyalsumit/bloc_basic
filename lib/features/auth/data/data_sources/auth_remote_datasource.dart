//concern with calls made to database

import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:youtube/core/error/expection.dart';

abstract interface class AuthDataSource {
  Future<String> signupDataResouce(
      {required String name, required String email, required String password});
  Future<String> LoginDataResouce(
      {required String email, required String password});
}

class AuthRemoteDataResorce implements AuthDataSource {
  final SupabaseClient supabaseClient;
  AuthRemoteDataResorce(this.supabaseClient);
  @override
  Future<String> LoginDataResouce(
      {required String email, required String password}) {
    throw UnimplementedError();
  }

  @override
  Future<String> signupDataResouce(
      {required String name,
      required String email,
      required String password}) async {
    try {
      final response = await supabaseClient.auth.signUp(
        password: password,
        email: email,
        data: {'name': name},
      );
      if (response.user == null) {
        throw const ServerExpection('User is null');
      }
      return response.user!.id;
    } catch (e) {
      print(e.toString());
      return 'Error: ${e.toString()}';
    }
  }
}
