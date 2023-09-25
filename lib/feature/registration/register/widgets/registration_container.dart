import 'package:flutter/material.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';

class AuthContainer extends StatelessWidget {
  const AuthContainer({
    super.key,
    required this.title,
    required this.onTap,
  });

  final String title;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 0.095,
        width: MediaQuery.of(context).size.height * 0.42,
        decoration: BoxDecoration(
          border: Border.all(
            color: MyColors.black,
          ),
          borderRadius: BorderRadius.circular(20),
          color: MyColors.laim,
        ),
        child: Center(
          child: Text(
            title,
            style: HeadlinesTextStyle.style700w27.copyWith(
              color: MyColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
