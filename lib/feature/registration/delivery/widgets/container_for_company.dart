import 'package:flutter/material.dart';
import 'package:myapp/constants/liam_texts.dart';
import 'package:myapp/feature/registration/register/widgets/auth_text_field.dart';

class ContainerForCompany extends StatelessWidget {
  final TextEditingController company, passwordController, email, field4;
  const ContainerForCompany({
    super.key,
    required this.company,
    required this.email,
    required this.passwordController,
    required this.field4,
  });

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(height: height * 0.06),
        AuthTextField(
          title: nameOfCompany,
          controller: company,
        ),
        SizedBox(height: height * 0.02),
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
          title: nameOfCompany,
          controller: field4,
        ),
      ],
    );
  }
}
