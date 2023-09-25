import 'package:flutter/material.dart';
import 'package:myapp/constants/liam_texts.dart';
import 'package:myapp/feature/registration/register/widgets/auth_text_field.dart';

class ContainerForPrivate extends StatelessWidget {
  final TextEditingController tName, passwordController, email, lastName;
  const ContainerForPrivate({
    super.key,
    required this.tName,
    required this.passwordController,
    required this.email,
    required this.lastName,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * 0.06),
        AuthTextField(
          title: emailOrNumber,
          controller: email,
        ),
        SizedBox(height: height * 0.02),
        AuthTextField(
          title: password,
          controller: passwordController,
        ),
        SizedBox(height: height * 0.02),
        AuthTextField(
          title: name,
          controller: tName,
        ),
        SizedBox(height: height * 0.02),
        AuthTextField(
          title: serName,
          controller: lastName,
        ),
      ],
    );
  }
}
