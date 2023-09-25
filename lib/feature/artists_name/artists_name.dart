import 'package:flutter/material.dart';
import 'package:myapp/feature/artists_name/widgets/artists_name_container.dart';
import 'package:myapp/feature/artists_name/widgets/artists_named.dart';
import 'package:myapp/feature/artists_name/widgets/rating_container.dart';
import 'package:myapp/feature/artists_name/widgets/transports_container.dart';
import '../../utils.dart';

class ArtistName extends StatelessWidget {
  const ArtistName({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff363936),
        title: Text(
          'Название исполнителя',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 27 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.2175 * ffem / fem,
            decoration: TextDecoration.underline,
            color: const Color(0xffffffff),
            decorationColor: const Color(0xffffffff),
          ),
        ),
      ),
      body: ListView(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.04),
              const ArtistsNameContainer(),
              Text(
                'Транспорт',
                textAlign: TextAlign.center,
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 23 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: const Color(0xff000000),
                ),
              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: height * 0.02),
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: SizedBox(
                        height: height * 0.15,
                        child: ListView.separated(
                          shrinkWrap: true,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) =>
                              const TransporstContainer(),
                          itemCount: 3,
                          separatorBuilder: (context, index) =>
                              SizedBox(width: width * 0.02),
                        ),
                      ),
                    ),
                    SizedBox(height: height * 0.04),
                    Text(
                      'Выполненые заказы',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Montserrat',
                        fontSize: 23 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2175 * ffem / fem,
                        color: const Color(0xff000000),
                      ),
                    ),
                    SizedBox(height: height * 0.02),
                    const ArtistsNamed(),
                    SizedBox(height: height * 0.02),
                    const ArtistsNamed(),
                    SizedBox(height: height * 0.02),
                    Container(
                      // X8s (53:405)
                      margin: EdgeInsets.fromLTRB(
                          3 * fem, 0 * fem, 0 * fem, 49 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 259 * fem,
                      ),
                      child: Text(
                        'Смотреть все выполненые заказы',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          decoration: TextDecoration.underline,
                          color: const Color(0xff000000),
                          decorationColor: const Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // ZLT (53:406)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 8 * fem, 37 * fem),
                      child: Text(
                        'Отзывы',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 23 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: const Color(0xff000000),
                        ),
                      ),
                    ),
                    const RatingContainer(),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
