import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AboutCustomer extends StatelessWidget {
  const AboutCustomer({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // autogroupsupkggw (2Xz1XfEwAt28W2sNCWsupK)
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 66 * fem),
      padding: EdgeInsets.fromLTRB(14 * fem, 22 * fem, 14 * fem, 44 * fem),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0x2b05ff00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            // yAF (53:320)
            margin: EdgeInsets.fromLTRB(11 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: Text(
              'О заказчике:',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // Eby (53:321)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 223 * fem, 8 * fem),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: const Color(0xff000000),
                ),
                children: [
                  const TextSpan(
                    text: 'Рейтинг:',
                  ),
                  TextSpan(
                    text: ' 100/100',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 20 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff1fce1c),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // vt7 (53:322)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 112 * fem, 26 * fem),
            child: Text(
              'Заказов на площадке: 33',
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 20 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // pCo (53:323)
            margin: EdgeInsets.fromLTRB(13 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/orders');
              },
              child: Text(
                'Профиль заказчика',
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 20 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  decoration: TextDecoration.underline,
                  color: const Color(0xff000000),
                  decorationColor: const Color(0xff000000),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
