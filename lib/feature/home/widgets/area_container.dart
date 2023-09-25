import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AreaContainer extends StatelessWidget {
  const AreaContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
       double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
                              width: width * 0.45,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: const Color(0x2b05ff00),
                                borderRadius: BorderRadius.circular(7 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  'Приморский',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2125 * ffem / fem,
                                    color: const Color(0xff000000),
                                  ),
                                ),
                              ),
                            );
  }
}