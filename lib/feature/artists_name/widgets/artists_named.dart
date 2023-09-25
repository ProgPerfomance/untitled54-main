import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class ArtistsNamed extends StatelessWidget {
  const ArtistsNamed({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 8 * fem, 8 * fem),
      padding: EdgeInsets.fromLTRB(9 * fem, 8 * fem, 9 * fem, 5 * fem),
      width: 413 * fem,
      decoration: BoxDecoration(
        color: const Color(0x2b05ff00),
        borderRadius: BorderRadius.circular(10 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // Uyu (53:394)
            margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: Text(
              'Название',
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
            // b2w (53:395)
            margin: EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 7 * fem),
            child: Text(
              'Заказчик',
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
            // 5Tu (53:396)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: Text(
              'Конечная цена: 3 000 000',
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
            // NT1 (53:397)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
            child: Text(
              'Сроки:',
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
            // tgF (53:398)
            margin: EdgeInsets.fromLTRB(149 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              'подробнее',
              style: SafeGoogleFont(
                'Inter',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
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
