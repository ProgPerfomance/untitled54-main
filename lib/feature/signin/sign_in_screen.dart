import 'package:flutter/material.dart';
import 'package:myapp/ui/text_style.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(children: [
        Text(
          "Авторизация",
          style: HeadlinesTextStyle.style700w33.copyWith(
            color: Colors.black,
          ),
        ),
      ]),
    );
  }
}
