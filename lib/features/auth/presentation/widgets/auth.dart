import 'package:flutter/material.dart';
import 'package:youtube/core/themes/AppPallete.dart';

class auth extends StatelessWidget {
  final String HintText;
  final TextEditingController controller;
  final bool isobsecureText;
  const auth({
    super.key,
    required this.HintText,
    required this.controller,
    this.isobsecureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        hintText: HintText,
      ),
      validator: (value) {
        if (value!.isEmpty) {
          return '$HintText is empty';
        }
        return null;
      },
      obscureText: isobsecureText,
    );
  }
}
