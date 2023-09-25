import 'package:flutter/material.dart';


import '../data/data.dart';
import '../ui/widgets/info_row.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff28272d),
        title: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: const Color(0xff333238),
            boxShadow: const [
              BoxShadow(
                color: Color(
                  0xffd64743,
                ),
                offset: Offset(
                  0.0,
                  5.0,
                ),
                blurRadius: 3.0,
                spreadRadius: 0.0,
              ), //BoxShadow
              BoxShadow(
                color: Colors.white,
                offset: Offset(0.0, 0.0),
                blurRadius: 0.0,
                spreadRadius: 0.0,
              ), //BoxShadow
            ],
          ),
          child: const Text(
            'Настройки',
            style: TextStyle(
              fontSize: 27,
              color: Color(0xffdfdee4),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: const Color(0xff333238),
              boxShadow: const [
                BoxShadow(
                  color: Color(
                    0xffd64743,
                  ),
                  offset: Offset(
                    5.0,
                    5.0,
                  ),
                  blurRadius: 10.0,
                  spreadRadius: 2.0,
                ), //BoxShadow
                BoxShadow(
                  color: Colors.white,
                  offset: Offset(0.0, 0.0),
                  blurRadius: 0.0,
                  spreadRadius: 0.0,
                ), //BoxShadow
              ],
            ),
            margin: const EdgeInsets.only(
              top: 30,
              left: 20,
              right: 20,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      // width: double.infinity,
                      alignment: Alignment.center,
                      child: const Text(
                        ' Настройки профиля',
                        style: TextStyle(
                          fontWeight: FontWeight.w700,
                          fontSize: 23,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: double.infinity,
                  child: UserInfo(
                    userInfo: userInfo,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  const UserInfo({
    super.key,
    required this.userInfo,
    this.onTap,
  });

  final VoidCallback? onTap;
  final Map<String, Object> userInfo;

  String formattedPhoneNumber(String phoneNumber) {
    return "${phoneNumber.substring(0, phoneNumber.length - 10)} ${phoneNumber.substring(phoneNumber.length - 10, phoneNumber.length - 7)} ${phoneNumber.substring(phoneNumber.length - 7, phoneNumber.length - 4)} ${phoneNumber.substring(phoneNumber.length - 4, phoneNumber.length - 2)} ${phoneNumber.substring(phoneNumber.length - 2, phoneNumber.length)}";
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 15,
        ),
        InfoRow(
          title: 'ФИО: ',
          titleDescription: userInfo['name'].toString(),
        ),
        const SizedBox(
          height: 5,
        ),
        InfoRow(
          title: 'Почта: ',
          titleDescription:
              userInfo['email'] != null ? userInfo['email'].toString() : '',
        ),
        const SizedBox(
          height: 5,
        ),
        InfoRow(
          title: 'Номер телефона: ',
          titleDescription: userInfo['phoneNumber'] != null
              ? formattedPhoneNumber(userInfo['phoneNumber'].toString())
              : '',
        ),
        const SizedBox(
          height: 20,
        ),
        InkWell(
          onTap: onTap ?? () {},
          borderRadius: BorderRadius.circular(10),
          child: Container(
            alignment: Alignment.center,
            child: const Text(
              'Изменить пароль',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 15,
                decoration: TextDecoration.underline,
                decorationColor: Color(0xffd64743),
                decorationThickness: 2,
                color: Colors.transparent,
                shadows: [
                  Shadow(offset: Offset(0, -10), color: Color(0xffdfdee4))
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const Divider(),
        const SizedBox(
          height: 10,
        ),
        Text(
          userInfo['description'] as String,
          style: const TextStyle(
            fontWeight: FontWeight.w500,
            fontSize: 15,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
