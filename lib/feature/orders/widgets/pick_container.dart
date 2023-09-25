import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class PickContainer extends StatelessWidget {
  const PickContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      padding: EdgeInsets.fromLTRB(17 * fem, 15 * fem, 17 * fem, 29 * fem),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0x2b05ff00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // EwH (53:362)
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 10 * fem),
            child: Text(
              'ПИК',
              style: GoogleFonts.montserrat(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: Colors.black,
              ),
            ),
          ),
          Container(
            // JgF (53:363)
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 10 * fem),
            child: Text(
              'Вид деятельности:',
              style: GoogleFonts.montserrat(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // atf (53:364)
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 10 * fem),
            child: Text(
              'Рейтинг: ',
              style: GoogleFonts.montserrat(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // 5aX (53:365)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 9 * fem),
            child: Text(
              'Зарегистрированна:',
              style: GoogleFonts.montserrat(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // cpmmCT (53:366)
            margin: EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 0 * fem),
            child: Text(
              'Проверенна системой CPM:',
              style: GoogleFonts.montserrat(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
