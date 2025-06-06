import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:youtube/core/themes/AppPallete.dart';
import 'package:youtube/features/auth/presentation/pages/SignUp.dart';
import 'package:youtube/features/auth/presentation/widgets/auth.dart';
import 'package:youtube/features/auth/presentation/widgets/authbutton.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
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
        body: Padding(
            padding: EdgeInsets.all(8.0),
            child: Form(
              key: key,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Sign In",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
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
                  const authbutton(text: "Sign In"),
                  const SizedBox(height: 20),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const SignUp()),
                      );
                    },
                    child: RichText(
                      text: TextSpan(
                          text: "Don 't  have account? ",
                          style: Theme.of(context).textTheme.titleMedium,
                          children: [
                            TextSpan(
                              text: 'Sign up',
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
