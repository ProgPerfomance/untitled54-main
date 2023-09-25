import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class AuctionButton extends StatelessWidget {
  const AuctionButton({super.key});

  @override
  Widget build(BuildContext context) {
        double baseWidth = 393;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
                // autogroup86etGdM (2Xz92CFtcscUssPyQA86ET)
                margin:
                    EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 189 * fem),
                padding:
                    EdgeInsets.fromLTRB(10 * fem, 16 * fem, 95 * fem, 9 * fem),
                width: double.infinity,
                height: 48 * fem,
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
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      // hCs (53:454)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 86 * fem, 2 * fem),
                      child: Text(
                        'Аукцион',
                        style: SafeGoogleFont(
                          'Montserrat',
                          fontSize: 17 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.2175 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 46 * fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 0 * fem,
                            top: 1 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 46 * fem,
                                height: 20 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                    border: Border.all(
                                        color: const Color(0xff000000)),
                                    color: const Color(0xff05ff00),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // AVm (53:459)
                            left: 13 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 26 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'да',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      // autogroup98b9Rgb (2Xz9HrUTy9GpRV7JxT98B9)
                      width: 46 * fem,
                      height: 22 * fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle38urf (53:463)
                            left: 0 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 46 * fem,
                                height: 20 * fem,
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius:
                                        BorderRadius.circular(5 * fem),
                                    border: Border.all(
                                        color: const Color(0xff000000)),
                                    color: const Color(0x4c00ff0a),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // z7R (53:461)
                            left: 6 * fem,
                            top: 0 * fem,
                            child: Align(
                              child: SizedBox(
                                width: 34 * fem,
                                height: 21 * fem,
                                child: Text(
                                  'нет',
                                  style: SafeGoogleFont(
                                    'Montserrat',
                                    fontSize: 17 * ffem,
                                    fontWeight: FontWeight.w700,
                                    height: 1.2175 * ffem / fem,
                                    color: const Color(0xffffffff),
                                  ),
                                ),
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