import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 23, 22, 22),
      body: Center(
        child: Column(children: [
          Padding(
            padding: EdgeInsets.only(
              top: 56,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Text(
                    "НЕ ЛАИМ",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 33,
                      color: const Color.fromARGB(255, 136, 43, 127),
                    ),
                  ),
                ),
                Center(
                  child: Text(
                    "Автотранспортное предприятие",
                    style: GoogleFonts.inter(
                      fontWeight: FontWeight.bold,
                      fontSize: 23,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
