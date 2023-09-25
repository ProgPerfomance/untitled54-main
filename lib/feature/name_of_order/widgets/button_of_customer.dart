import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class NamedButton extends StatelessWidget {
  const NamedButton({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    final width = MediaQuery.of(context).size.width;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: width * 0.7,
      height: 54 * fem,
      decoration: BoxDecoration(
        color: const Color(0x2b05ff00),
        borderRadius: BorderRadius.circular(19 * fem),
      ),
      child: Center(
        child: Text(
          'Отклинуться',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 23 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2175 * ffem / fem,
            color: const Color(0xff000000),
          ),
        ),
      ),
    );
  }
}
