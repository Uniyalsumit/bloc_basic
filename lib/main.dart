import 'package:flutter/material.dart';
import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:youtube/core/themes/AppTheme.dart';
import 'package:youtube/features/auth/presentation/pages/SignUp.dart';
import 'package:youtube/features/auth/presentation/pages/loginPage.dart';
import 'package:youtube/core/Appsecrets/secrets.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final supabase = Supabase.initialize(
      url: Appsecret.supabaseUrl, anonKey: Appsecret.supabaseAnnonKey);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Apptheme.darkmodeTheme,
      home: loginPage(),
    );
  }
}
