import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/feature/orders/widgets/named_container.dart';
import 'package:myapp/feature/orders/widgets/pick_container.dart';

class Orders extends StatelessWidget {
  const Orders({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height * 0.05,
              ),
              const PickContainer(),
              SizedBox(height: height * 0.02),
              Text(
                'Заказы',
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  fontSize: 23 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
              Container(
                // autogrouplwnbjHh (2Xz3A7XYyFgFLCpM5YLWNB)
                margin: EdgeInsets.symmetric(vertical: height * 0.02),
                width: double.infinity,
                height: 26 * fem,
                child: Row(
                  children: [
                    Container(
                      // autogroupwejb3JP (2Xz3HMpUfBCdx84EPswEJB)

                      height: double.infinity,
                      width: width * 0.53,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff000000)),
                        color: const Color(0x8e05ff00),
                      ),
                      child: Center(
                        child: Text(
                          'Активные',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      height: double.infinity,
                      width: width * 0.47,
                      decoration: BoxDecoration(
                        border: Border.all(color: const Color(0xff000000)),
                        color: const Color(0x751fce1c),
                      ),
                      child: Center(
                        child: Text(
                          'Архив',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.montserrat(
                            fontSize: 15 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2175 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: height * 0.02),
              const NamedOrderContainer(),
            ],
          ),
        ],
      ),
    );
  }
}
