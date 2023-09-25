import 'package:flutter/material.dart';
import 'package:myapp/feature/make_order/widgets/auction_button.dart';
import 'package:myapp/feature/make_order/widgets/budget.dart';
import 'package:myapp/feature/make_order/widgets/make_order_button.dart';
import 'package:myapp/feature/make_order/widgets/types.dart';
import 'package:myapp/feature/make_order/widgets/volume.dart';
import 'package:myapp/feature/make_order/widgets/weight.dart';
import '../../utils.dart';

class MakeOrder extends StatelessWidget {
  const MakeOrder({super.key});

  @override
  Widget build(BuildContext context) {
    double baseWidth = 393;
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
          'Создание заказа',
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
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: width * 0.03),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: height * 0.05),
              const TypesContainer(),
              SizedBox(height: height * 0.01),
              const WeightContainer(),
              SizedBox(height: height * 0.01),
              const VolumeContainer(),
              SizedBox(height: height * 0.01),
              const BudgetContainer(),
              SizedBox(height: height * 0.01),
              const AuctionButton(),
              SizedBox(height: height * 0.05),
              const MakeOrderButton(),
            ],
          ),
        ),
      ),
    );
  }
}
