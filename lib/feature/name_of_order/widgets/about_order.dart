import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AboutOrder extends StatelessWidget {
  const AboutOrder({super.key});

  @override
  Widget build(BuildContext context) {
        double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
              // autogroupgfjxRdH (2XyzLSjGMYmrSxLk3MgFJX)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 40 * fem),
              padding:
                  EdgeInsets.fromLTRB(15 * fem, 6 * fem, 15 * fem, 25 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0x2b05ff00),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // u2f (53:317)
                    margin:
                        EdgeInsets.fromLTRB(9 * fem, 0 * fem, 0 * fem, 1 * fem),
                    child: Text(
                      'О заказе:',
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
                    // autogroup3g8wPCj (2Xyzcbw1Qa8HZ3j38v3g8w)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 6 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // WHM (53:306)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 239 * fem, 9 * fem),
                          child: Text(
                            'Тип груза:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // p39 (53:307)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 9 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'щебень',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupbcsyJDD (2XyzjBaNppjDRfQK4uBCsy)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 3 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // pBZ (53:304)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 164 * fem, 6 * fem),
                          child: Text(
                            'Общая масса груза:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // hFM (53:308)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 6 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '10000 т',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupklupCT1 (2XyzqgPYxciThs8m5LkLUP)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 4 * fem, 12 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // KGj (53:305)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 6 * fem, 128 * fem, 0 * fem),
                          child: Text(
                            'Общих объём груза:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // oSo (53:309)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 6 * fem),
                          child: Text(
                            '1000 кубов',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupssdrHsm (2XyzxG2vNsKPaUp31KssDR)
                    margin:
                        EdgeInsets.fromLTRB(1 * fem, 0 * fem, 0 * fem, 8 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // BiF (53:310)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 136 * fem, 3 * fem),
                          child: Text(
                            'Срок исполнения:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // 4X9 (53:311)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 3 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'до 23.03.2023',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // autogroupdqdmmAf (2Xz14RXKNpquV2mBKbDQDM)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 4 * fem, 0 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // h4K (53:312)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 239 * fem, 0 * fem),
                          child: Text(
                            'Расстояние:',
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // bQb (53:313)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 1 * fem),
                          child: Text(
                            '103 км',
                            textAlign: TextAlign.right,
                            style: SafeGoogleFont(
                              'Montserrat',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2175 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
  }
}