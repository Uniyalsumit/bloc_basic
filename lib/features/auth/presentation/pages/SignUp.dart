import 'package:flutter/material.dart';
import 'package:youtube/core/themes/AppPallete.dart';
import 'package:youtube/features/auth/presentation/pages/loginPage.dart';
import 'package:youtube/features/auth/presentation/widgets/auth.dart';
import 'package:youtube/features/auth/presentation/widgets/authbutton.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final nameController = TextEditingController();
  final key = GlobalKey<FormState>();
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign Up",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  auth(
                    HintText: "Name",
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  auth(
                    HintText: "E-mail",
                    controller: emailController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  auth(
                    HintText: "Password",
                    controller: passwordController,
                    isobsecureText: true,
                  ),
                  const SizedBox(height: 20),
                  const authbutton(text: "Sign up"),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const loginPage()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                          text: 'Already have account? ',
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'Sign in',
                              style: Theme.of(context)
                                  .textTheme
                                  .titleMedium
                                  ?.copyWith(
                                      color: AppPallete.gradient2,
                                      fontWeight: FontWeight.bold),
                            ),
                          ]),
                    ),
                  ),
                ],
              ),
            )));
  }
}
