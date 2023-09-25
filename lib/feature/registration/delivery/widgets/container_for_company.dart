import 'package:flutter/material.dart';
import 'package:myapp/constants/liam_texts.dart';
import 'package:myapp/feature/registration/register/widgets/auth_text_field.dart';

class ContainerForCompany extends StatelessWidget {
  const ContainerForCompany({super.key});

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final controller = TextEditingController();
    return Column(
      children: [
        SizedBox(height: height * 0.06),
        AuthTextField(
          title: nameOfCompany,
          controller: controller,
        ),
        SizedBox(height: height * 0.02),
        AuthTextField(
          title: emailOrNumber,
          controller: controller,
        ),
        SizedBox(height: height * 0.02),
        AuthTextField(
          title: password,
          controller: controller,
        ),
        SizedBox(height: height * 0.02),
        AuthTextField(
          title: nameOfCompany,
          controller: controller,
        ),
      ],
    );
  }
}
