import 'package:flutter/material.dart';
import 'package:myapp/feature/setting/widgets/setting_container.dart';
import '../../utils.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    final height = MediaQuery.of(context).size.height;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: const Color(0xff363936),
        title: Text(
          'Настройки',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Montserrat',
            fontSize: 27 * ffem,
            fontWeight: FontWeight.w400,
            height: 1.2175 * ffem / fem,
            color: const Color(0xffffffff),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: height * 0.05),
          const SettingContainer(),
        ],
      ),
    );
  }
}
