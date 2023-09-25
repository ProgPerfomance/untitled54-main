import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff28272d),
        title: Container(
          margin: const EdgeInsets.only(left: 10),
          child: const Text(
            'ЛАИМ',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.w700,
              color: Color(0xfffc4c02),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 90),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
                  margin: const EdgeInsets.symmetric(horizontal: 20),
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
                    textAlign: TextAlign.center,
                    'Автотранспортное предприятие',
                    style: TextStyle(
                      fontSize: 27,
                      color: Color(0xffFFFFFF),
                    ),
                  ),
                ),
                const SizedBox(height: 90),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/authorization');
                  },
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xffd64743),
                    ),
                  ),
                  child: const Text(
                    'Войти',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      // color: Color(0xffdfdee4),
                      shadows: [
                        Shadow(offset: Offset(0, -5), color: Color(0xffdfdee4))
                      ],
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff333238),
                      decorationThickness: 2,
                    ),
                  ),
                ),
                const SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).pushNamed('/registration-start');
                  },
                  style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 60, vertical: 15),
                    ),
                    backgroundColor: MaterialStatePropertyAll(
                      Color(0xffd64743),
                    ),
                  ),
                  child: const Text(
                    'Зарегистриваться',
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 25,
                      // color: Color(0xffdfdee4),
                      shadows: [
                        Shadow(offset: Offset(0, -5), color: Color(0xffdfdee4))
                      ],
                      color: Colors.transparent,
                      decoration: TextDecoration.underline,
                      decorationColor: Color(0xff333238),
                      decorationThickness: 2,
                    ),
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
