import 'package:flutter/material.dart';
import 'package:myapp/utils.dart';

class SettingContainer extends StatelessWidget {
  const SettingContainer({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      // autogroupwizmFSo (2Xz7gUzNrjcaJgT55VwiZM)
      padding: EdgeInsets.fromLTRB(17 * fem, 9 * fem, 19 * fem, 83 * fem),
      width: double.infinity,
      decoration: const BoxDecoration(
        color: Color(0x2b05ff00),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            // Lz3 (53:433)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 13 * fem),
            width: double.infinity,
            child: Text(
              'Настройки профиля',
              textAlign: TextAlign.center,
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 23 * ffem,
                fontWeight: FontWeight.w700,
                height: 1.2175 * ffem / fem,
                color: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // S1V (53:434)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: const Color(0xff000000),
                ),
                children: [
                  const TextSpan(
                    text: 'ФИО: ',
                  ),
                  TextSpan(
                    text: 'Никитов Никита Никитович',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // v55 (53:435)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: const Color(0xff000000),
                ),
                children: [
                  const TextSpan(
                    text: 'Почта: ',
                  ),
                  TextSpan(
                    text: 'не добавлена',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // GYF (53:436)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 5 * fem),
            child: RichText(
              text: TextSpan(
                style: SafeGoogleFont(
                  'Montserrat',
                  fontSize: 15 * ffem,
                  fontWeight: FontWeight.w700,
                  height: 1.2175 * ffem / fem,
                  color: const Color(0xff000000),
                ),
                children: [
                  const TextSpan(
                    text: 'Номер телефона: ',
                  ),
                  TextSpan(
                    text: '8 505 505 55 55',
                    style: SafeGoogleFont(
                      'Montserrat',
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.2175 * ffem / fem,
                      color: const Color(0xff000000),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            // dGK (53:437)
            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 10 * fem),
            child: Text(
              'Изменить пароль',
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 15 * ffem,
                fontWeight: FontWeight.w600,
                height: 1.2175 * ffem / fem,
                decoration: TextDecoration.underline,
                color: const Color(0xff000000),
                decorationColor: const Color(0xff000000),
              ),
            ),
          ),
          Container(
            // txw (53:443)
            constraints: BoxConstraints(
              maxWidth: 392 * fem,
            ),
            child: Text(
              'Занимаюсь тем то тем то пью только этоЗанимаюсь тем то тем то пью только этоЗанимаюсь тем то тем то пью только это',
              style: SafeGoogleFont(
                'Montserrat',
                fontSize: 12 * ffem,
                fontWeight: FontWeight.w500,
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
