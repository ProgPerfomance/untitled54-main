import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class RatingContainer extends StatelessWidget {
  const RatingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // autogroupa2ufsM9 (2Xz5tCeoaDMuTnxbGGa2UF)
      margin: EdgeInsets.fromLTRB(14 * fem, 0 * fem, 21 * fem, 0 * fem),
      padding: EdgeInsets.fromLTRB(15 * fem, 6 * fem, 15 * fem, 11 * fem),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x2b05ff00),
        borderRadius: BorderRadius.circular(10 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // xNb (53:413)
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              'Оценка:10/10',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // rym (53:414)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 2 * fem),
            child: Text(
              'Заказчик: ПИК',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // AzT (53:415)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: Text(
              'Очень оперативно доставили.',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // rsH (53:419)
            width: double.infinity,
            child: Text(
              'Подробнее',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Inter',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w400,
                height: 1.2125 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
