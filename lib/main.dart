import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/views/change_price_screen.dart';


import '/views/views.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ЛАИМ',
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: const Color(0xffdfdee4),
              displayColor: const Color(0xffdfdee4),
              fontFamily:
                  GoogleFonts.mooli(color: const Color(0xff818085)).fontFamily,
            ),
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          labelStyle: TextStyle(color: Color(0xffdfdee4)),
        ),
      ),
      home: const HomeScreen(),
      routes: {
        // '': (context) => const HomeScreen(),
        '/orders': (context) => const OrdersScreen(),
        '/my_orders': (context) => const MyOrdersScreen(),
        '/settings': (context) => const SettingsScreen(),
        '/order-info': (context) => const OrderInfoScreen(),
        '/contractor-info': (context) => const ContractorInfoScreen(),
        '/client-info': (context) => const ClientInfoScreen(),
        '/create-Order': (context) => CreateOrderScreen(),
        '/authorization': (context) => AuthorizationScreen(),
        '/registration-start': (context) => const RegistrationStartScreen(),
        '/registration-client': (context) => RegistrationClientScreen(),
        '/change_price': (context) => const ChangePrice(),
        '/registration-contactor-start': (context) =>
            const RegistrationContactorStartScreen(),
        '/registration-owner-contactor-start': (context) =>
            RegistrationOwnerContractorScreen(),
        '/registration-company-contactor': (context) =>
            RegistrationCompanyContractorScreen(),
      },
    );
  }
}
