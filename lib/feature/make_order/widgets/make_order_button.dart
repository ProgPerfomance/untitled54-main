import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class MakeOrderButton extends StatelessWidget {
  const MakeOrderButton({super.key});

  @override
  Widget build(BuildContext context) {
        double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
                margin:
                    EdgeInsets.fromLTRB(50 * fem, 0 * fem, 29 * fem, 0 * fem),
                width: double.infinity,
                height: 46 * fem,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff000000)),
                  color: const Color(0xff05ff00),
                  borderRadius: BorderRadius.circular(13 * fem),
                ),
                child: Center(
                  child: Text(
                    'Создать',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 17 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ),
              );
  }
}