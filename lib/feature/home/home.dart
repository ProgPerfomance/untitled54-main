import 'package:flutter/material.dart';
import 'package:myapp/constants/icon_path.dart';
import 'package:myapp/feature/home/widgets/area_container.dart';
import 'package:myapp/feature/home/widgets/named_container.dart';
import '../../utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        actions: [
          Image.asset(message, scale: 3),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.04),
            child: InkWell(
              onTap: () {
                Navigator.pushNamed(context, '/setting');
              },
              child: Image.asset(setting, scale: 3),
            ),
          ),
        ],
        backgroundColor: const Color(0xff363936),
        automaticallyImplyLeading: false,
        elevation: 0,
        centerTitle: false,
        title: Text(
          'ЛАИМ',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 27 * ffem,
            fontWeight: FontWeight.w700,
            height: 1.2125 * ffem / fem,
            color: const Color(0xff05ff00),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // autogroupdzysp8X (2XywZC2cy9iFmgH6mxDZYs)
              padding: EdgeInsets.symmetric(
                  vertical: height * 0.02, horizontal: width * 0.013),
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    // autogroupaajhvhM (2Xyva8qMapHeLsm7QEaAjh)
                    margin: EdgeInsets.fromLTRB(
                        4 * fem, 0 * fem, 78.5 * fem, 15 * fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          // f99 (51:225)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 27 * fem, 7.5 * fem, 0 * fem),
                          child: Text(
                            'Район',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 27 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.2125 * ffem / fem,
                              color: const Color(0xff000000),
                            ),
                          ),
                        ),
                        Text(
                          // xnT (53:276)
                          'Санкт-Петербург',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 23 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: const Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: height * 0.05,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => const AreaContainer(),
                      itemCount: 3,
                      separatorBuilder: (context, index) =>
                          SizedBox(width: width * 0.02),
                    ),
                  ),
                  SizedBox(height: height * 0.04),
                  Container(
                    // gVV (51:228)
                    margin: EdgeInsets.fromLTRB(
                        5 * fem, 0 * fem, 0 * fem, 43 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 206 * fem,
                    ),
                    child: Text(
                      'Заказы в выбранных районах',
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 17 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                  ),
                  const NamedContainer(),
                  SizedBox(height: height * 0.02),
                  const NamedContainer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
