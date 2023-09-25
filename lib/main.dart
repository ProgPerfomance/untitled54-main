import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:myapp/feature/artists_name/artists_name.dart';
import 'package:myapp/feature/home/home.dart';
import 'package:myapp/feature/make_order/make_order.dart';
import 'package:myapp/feature/name_of_order/name_of_order.dart';
import 'package:myapp/feature/orders/orders.dart';
import 'package:myapp/feature/registration/customer/view/registration_for%20customer.dart';
import 'package:myapp/feature/registration/delivery/view/registration_for_delivery.dart';
import 'package:myapp/feature/registration/register/view/registration_screen.dart';
import 'package:myapp/feature/setting/setting.dart';
import 'package:myapp/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.deepPurple,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: '/auth',
      routes: {
        '/auth': (context) => const RegistrationScreen(),
        '/auth_customer': (context) => AuthForCustomer(),
        '/auth_carrier': (context) => const AuthForCarrier(),
        '/home': (context) => const HomeScreen(),
        '/name_of_order': (context) => const NameOfOrder(),
        '/orders': (context) => const Orders(),
        '/setting': (context) => const Setting(),
        '/artists_name': (context) => const ArtistName(),
        '/make_order': (context) => const MakeOrder(),
      },
      home: const RegistrationScreen(),
    );
  }
}
