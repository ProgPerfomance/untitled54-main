import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:intl/intl.dart';

import '../data/data.dart';
import '../models/order_screen_models.dart';
import '../ui/widgets/map_container.dart';
import '../ui/widgets/widgets.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      appBar: AppBar(
        // centerTitle: true,
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
        actions: [
          Container(
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
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                "assets/envelope.svg",
                semanticsLabel: 'Envelope',
              ),
            ),
          ),
          Container(
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
            child: IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed('/settings');
              },
              icon: SvgPicture.asset(
                "assets/cog.svg",
                semanticsLabel: 'Settings',
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Санкт-Петербург',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 20),
                  child: const Text(
                    'Район:',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 43,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      ...districtData
                          .map((district) => District(district: district))
                          .toList()
                    ],
                  ),
                ),
                const SizedBox(height: 15),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  height: 250,
                  width: 350,
                  child: const MapContainer(),
                ),
                const SizedBox(height: 30),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(left: 20),
                  child: const SizedBox(
                    width: 220,
                    child: Text(
                      'Заказы в выбранных районах:',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  height: 650,
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return OrderItem(order: orders[index]);
                    },
                    itemCount: orders.length,
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

class District extends StatelessWidget {
  const District({super.key, required this.district, this.onTap});

  final String district;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap ?? () {},
      borderRadius: BorderRadius.circular(10),
      child: Container(
        // height: 20,
        margin: const EdgeInsets.only(left: 20, bottom: 8),
        padding: const EdgeInsets.symmetric(horizontal: 45, vertical: 6),
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
              blurRadius: 5.0,
              spreadRadius: 1.0,
            ), //BoxShadow
            BoxShadow(
              color: Colors.white,
              offset: Offset(0.0, 0.0),
              blurRadius: 0.0,
              spreadRadius: 0.0,
            ), //BoxShadow
          ],
        ),

        child: Text(
          district,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
            fontSize: 20,
            color: Colors.transparent,
            shadows: [Shadow(offset: Offset(0, -4), color: Color(0xffdfdee4))],
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  OrderItem({
    super.key,
    required this.order,
    this.onTap,
  });

  final Order order;
  final VoidCallback? onTap;
  final format = NumberFormat("#,##0.00", "ru_RU");

  @override
  Widget build(BuildContext context) {
    return Container(
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
            blurRadius: 5.0,
            spreadRadius: 1.0,
          ), //BoxShadow
          BoxShadow(
            color: Colors.white,
            offset: Offset(0.0, 0.0),
            blurRadius: 0.0,
            spreadRadius: 0.0,
          ), //BoxShadow
        ],
      ),
      margin: const EdgeInsets.all(
        10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              order.name,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Срок до: ',
            titleDescription: DateFormat('dd.MM.y').format(
              order.finishDate,
            ),
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Предлагаемая цена: ',
            titleDescription: format.format(order.price).toString(),
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Аукцион: ',
            titleDescription: order.isAuction ? 'да' : 'нет',
          ),
          const SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: onTap ??
                () {
                  Navigator.of(context).pushNamed('/order-info');
                },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Подробнее',
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
        ],
      ),
    );
  }
}
