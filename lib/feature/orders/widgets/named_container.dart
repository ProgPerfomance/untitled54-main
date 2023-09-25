import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NamedOrderContainer extends StatelessWidget {
  const NamedOrderContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Container(
      margin: EdgeInsets.fromLTRB(8 * fem, 0 * fem, 7 * fem, 0 * fem),
      padding: EdgeInsets.symmetric(
          horizontal: width * 0.02, vertical: height * 0.02),
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color(0x2b05ff00),
        borderRadius: BorderRadius.circular(10 * fem),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Название',
            style: GoogleFonts.montserrat(
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.2125 * ffem / fem,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Дата выполнения',
            style: GoogleFonts.inter(
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.2125 * ffem / fem,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.01),
          Text(
            'Конечная цена: 3 000 000',
            style: GoogleFonts.inter(
              fontSize: 15 * ffem,
              fontWeight: FontWeight.w700,
              height: 1.2125 * ffem / fem,
              color: Colors.black,
            ),
          ),
          SizedBox(height: height * 0.01),
          RichText(
            text: TextSpan(
              style: GoogleFonts.inter(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2125 * ffem / fem,
                color: Colors.black,
              ),
              children: [
                const TextSpan(
                  text: 'Аукцион: ',
                ),
                TextSpan(
                  text: 'да',
                  style: GoogleFonts.inter(
                    fontSize: 15 * ffem,
                    fontWeight: FontWeight.w700,
                    height: 1.2125 * ffem / fem,
                    color: const Color(0xff1ea61b),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height * 0.02),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.35),
            child: Text(
              'подробнее',
              style: GoogleFonts.inter(
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w700,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
