import 'package:flutter/material.dart';
import 'package:myapp/feature/name_of_order/widgets/about_order.dart';
import 'package:myapp/feature/name_of_order/widgets/auction_container.dart';
import 'package:myapp/feature/name_of_order/widgets/button_of_customer.dart';
import 'package:myapp/feature/name_of_order/widgets/customer_container.dart';
import 'dart:ui';
import '../../utils.dart';

class NameOfOrder extends StatefulWidget {
  // final name;
  // final startprice;
  // final topprice;
  // final yourprice;
  // final type;
  // final mass;
  // final volume;
  const NameOfOrder({
    super.key,
    // required this.startprice,
    // required this.name,
    // required this.topprice,
    // required this.yourprice,
    // required this.type,
    // required this.mass,
    // required this.volume,
  });
  @override
  State<NameOfOrder> createState() => _NameOfOrderState();
}

class _NameOfOrderState extends State<NameOfOrder> {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 428;
    final height = MediaQuery.of(context).size.height;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff363936),
        elevation: 0,
        title: Text(
          'Название заказа',
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: height * 0.05,
            ),
            const AuctionContainer(),
            SizedBox(height: height * 0.02),
            const AboutOrder(),
            SizedBox(height: height * 0.02),
            const AboutCustomer(),
            SizedBox(height: height * 0.001),
            const NamedButton(),
            SizedBox(height: height * 0.02),
          ],
        ),
      ),
    );
  }
}
