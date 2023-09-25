import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class BudgetContainer extends StatelessWidget {
  const BudgetContainer({super.key});

  @override
  Widget build(BuildContext context) {
            double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
                // autogrouptkgpHFd (2Xz8vHG5UHw1kZHJrXTkgP)
                margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 8 * fem),
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 14 * fem, 10 * fem, 15 * fem),
                width: double.infinity,
                decoration: BoxDecoration(
                  border: Border.all(color: const Color(0xff000000)),
                  color: const Color(0x2b05ff00),
                  borderRadius: BorderRadius.circular(10 * fem),
                  boxShadow: [
                    BoxShadow(
                      color: const Color(0x3f000000),
                      offset: Offset(0 * fem, 4 * fem),
                      blurRadius: 2 * fem,
                    ),
                  ],
                ),
                child: Text(
                  'Бюджет:',
                  style: SafeGoogleFont(
                    'Montserrat',
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w400,
                    height: 1.2175 * ffem / fem,
                    color: const Color(0xff000000),
                  ),
                ),
              );
  }
}