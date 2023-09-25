import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/order_info_screen_data.dart';
import '../ui/widgets/widgets.dart';

class OrderInfoScreen extends StatelessWidget {
  const OrderInfoScreen({
    super.key,
    this.onTap,
  });
  final VoidCallback? onTap;

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
            'Название заказа',
            style: TextStyle(
              fontSize: 27,
              color: Color(0xffdfdee4),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: AuctionInfo(
                  auctionInfo: auctionInfo,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: OrderInfo(
                  orderInfo: orderInfo,
                ),
              ),
              const SizedBox(height: 10),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ClientInfoShort(
                  clientInfoShort: clientInfoShort,
                ),
              ),
              const SizedBox(height: 30),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: onTap ?? () {},
        backgroundColor: const Color(0xffd64743),
        label: const Text(
          'Отклинуться',
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
            // color: Color(0xffdfdee4),
            shadows: [Shadow(offset: Offset(0, -5), color: Color(0xffdfdee4))],
            color: Colors.transparent,
            decoration: TextDecoration.underline,
            decorationColor: Color(0xff333238),
            decorationThickness: 2,
          ),
        ),
      ),
    );
  }
}

class AuctionInfo extends StatelessWidget {
  AuctionInfo({
    super.key,
    required this.auctionInfo,
    this.onTap,
  });

  final VoidCallback? onTap;
  final Map<String, Object> auctionInfo;
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
        top: 20,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'Аукцион',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Начальная стоимость: ',
            titleDescription: auctionInfo['price'] != null
                ? format.format(auctionInfo['price'])
                : '0',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Лучшее предложение: ',
            titleDescription: auctionInfo['bestPrice'] != null
                ? format.format(auctionInfo['bestPrice'])
                : '0',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Ваше предложение: ',
            titleDescription: auctionInfo['yourPrice'] != null
                ? format.format(auctionInfo['yourPrice'])
                : '0',
          ),
          const SizedBox(height: 10),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: onTap ??
                () {
                  Navigator.of(context).pushReplacementNamed('/change_price');
                },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Изменить предложение',
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
        ],
      ),
    );
  }
}

class OrderInfo extends StatelessWidget {
  const OrderInfo({
    super.key,
    required this.orderInfo,
  });

  final Map<String, Object> orderInfo;

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
        top: 20,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'О заказе',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Тип груза: ',
            titleDescription: orderInfo['cargoType'] != null
                ? orderInfo['cargoType'].toString()
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Общая масса груза, тонн: ',
            titleDescription: orderInfo['totalCargoWeight'] != null
                ? orderInfo['totalCargoWeight'].toString()
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Общих объём груза, m3: ',
            titleDescription: orderInfo['totalCargoVolume'] != null
                ? orderInfo['totalCargoVolume'].toString()
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Срок исполнения: ',
            titleDescription: orderInfo['deadline'] != null
                ? DateFormat('dd.MM.y').format(
                    orderInfo['deadline'] as DateTime,
                  )
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Расстояние, км: ',
            titleDescription: orderInfo['distance'] != null
                ? orderInfo['distance'].toString()
                : '',
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class ClientInfoShort extends StatelessWidget {
  const ClientInfoShort({
    super.key,
    required this.clientInfoShort,
    this.onTap,
  });

  final VoidCallback? onTap;
  final Map<String, Object> clientInfoShort;

  String getRating(String rating) {
    return '$rating/100';
  }

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
        top: 20,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: const Text(
              'О заказчике:',
              style: TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Рейтинг: ',
            titleDescription: clientInfoShort['rating'] != null
                ? getRating(clientInfoShort['rating'].toString())
                : '',
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Заказов на площадке: ',
            titleDescription: clientInfoShort['totalOrders'] != null
                ? clientInfoShort['totalOrders'].toString()
                : 'Заказов нет',
          ),
          const SizedBox(
            height: 15,
          ),
          InkWell(
            onTap: onTap ??
                () {
                  Navigator.of(context).pushNamed('/client-info');
                },
            borderRadius: BorderRadius.circular(10),
            child: Container(
              alignment: Alignment.center,
              child: const Text(
                'Профиль заказчика',
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
        ],
      ),
    );
  }
}
