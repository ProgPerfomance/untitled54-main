import 'package:flutter/material.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';

class CarrierContainer extends StatelessWidget {
  const CarrierContainer({
    super.key,
    required this.title,
    required this.backColor,
    required this.onTap,
  });

  final String title;
  final Color backColor;
  final void Function() onTap;

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width * 0.4,
        height: height * 0.06,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            13,
          ),
          color: backColor,
        ),
        child: Center(
          child: Text(
            title,
            style: HeadlinesTextStyle.style700w18.copyWith(
              color: MyColors.white,
            ),
          ),
        ),
      ),
    );
  }
}
