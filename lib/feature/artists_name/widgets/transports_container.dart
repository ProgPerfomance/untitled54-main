import 'package:flutter/material.dart';

class TransporstContainer extends StatelessWidget {
  const TransporstContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 13 * fem, 0 * fem),
      width: 211 * fem,
      height: 130 * fem,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10 * fem),
        color: const Color(0xffd9d9d9),
      ),
    );
  }
}
