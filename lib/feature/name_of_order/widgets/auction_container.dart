import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AuctionContainer extends StatelessWidget {
  const AuctionContainer({super.key});

  @override
  Widget build(BuildContext context) {
      double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
              // autogroupnpsbU6T (2XyyQimnKZxYkfdobQNpSB)
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 18 * fem),
              padding:
                  EdgeInsets.fromLTRB(10 * fem, 1 * fem, 13 * fem, 11 * fem),
              width: double.infinity,
              decoration: const BoxDecoration(
                color: Color(0x2b05ff00),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // Yc7 (53:296)
                    margin:
                        EdgeInsets.fromLTRB(2 * fem, 0 * fem, 0 * fem, 7 * fem),
                    child: Text(
                      'Аукцион',
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
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // Z1R (53:293)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2 * fem, 131 * fem, 0 * fem),
                          child: Text(
                            'Начальная стоимость: ',
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
                          // qjd (53:301)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 2 * fem),
                          child: Text(
                            '3 000 000',
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
                    // autogrouptcxxXcT (2XyykdNH9EzhZLZHEStCxX)
                    margin:
                        EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 7 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // qt3 (53:297)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 2 * fem, 124 * fem, 0 * fem),
                          child: Text(
                            'Лучшее предложение: ',
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
                          // LK1 (53:300)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 0 * fem, 2 * fem),
                          child: Text(
                            '2 300 000',
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
                    // autogroupgw9r2xX (2XyysTWEQsSgDC52w4gw9R)
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1 * fem, 10 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // 9XM (53:298)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 145 * fem, 1 * fem),
                          child: Text(
                            'Ваше предложение: ',
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
                          // 36w (53:299)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 1 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            '2 500 000',
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
                    // Y3h (53:302)
                    margin: EdgeInsets.fromLTRB(
                        21 * fem, 0 * fem, 0 * fem, 0 * fem),
                    child: Text(
                      'Изменить предложение',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175 * ffem / fem,
                        decoration: TextDecoration.underline,
                        color: const Color(0xff000000),
                        decorationColor: const Color(0xff000000),
                      ),
                    ),
                  ),
                ],
              ),
            );
  }
}