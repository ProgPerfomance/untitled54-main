import 'package:flutter/material.dart';
import 'package:myapp/ui/colors.dart';

class CheckButton extends StatefulWidget {
  const CheckButton({super.key});

  @override
  State<CheckButton> createState() => _CheckButtonState();
}

class _CheckButtonState extends State<CheckButton> {
  bool active = false;
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return InkWell(
      onTap: () {
        setState(() {
          active = !active;
        });
      },
      child: Container(
        width: width * 0.06,
        height: height * 0.03,
        decoration: BoxDecoration(
          color: MyColors.checkButton,
          border: Border.all(
            color: MyColors.black,
          ),
        ),
        child: active
            ? const Icon(
                Icons.check,
                color: Colors.green,
                size: 20,
              )
            : const SizedBox(),
      ),
    );
  }
}
