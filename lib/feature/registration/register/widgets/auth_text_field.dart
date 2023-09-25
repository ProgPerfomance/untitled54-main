import 'package:flutter/material.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';

class AuthTextField extends StatelessWidget {
  const AuthTextField({
    super.key,
    required this.title,
    required this.controller,
  });

  final String title;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: MyColors.textfieldbacksgreaund.withOpacity(0.2),
        hintText: title,
        hintStyle: MainTextStyle.style400w12.copyWith(
          color: MyColors.textfieldtext,
        ),
        contentPadding: const EdgeInsets.only(left: 20, top: 20, bottom: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}
