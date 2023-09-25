import 'package:flutter/material.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, '/home');
      },
      child: Container(
        height: MediaQuery.of(context).size.height * 0.09,
        width: MediaQuery.of(context).size.height * 0.3,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            30,
          ),
          color: MyColors.laim,
        ),
        child: Center(
          child: Text(
            title,
            style: HeadlinesTextStyle.style700w23.copyWith(
              color: MyColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
