import 'package:flutter/material.dart';
import 'package:intl/intl.dart';


import '../data/data.dart';
import '../ui/widgets/info_row.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({
    super.key,
    this.onTap,
  });

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);

    final appBar = AppBar(
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
          'Мои заказы',
          style: TextStyle(
            fontSize: 27,
            color: Color(0xffFFFFFF),
          ),
        ),
      ),
    );

    final bodyHeight = mediaQuery.size.height -
        appBar.preferredSize.height -
        mediaQuery.padding.top;

    final isLandScape = mediaQuery.orientation == Orientation.landscape;

    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      appBar: appBar,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                // card height * 3 pcs.
                height: isLandScape ? 230 * 3 : bodyHeight - 125,
                padding: const EdgeInsets.symmetric(horizontal: 35),
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return MyOrders(
                        orderFinishedInfo: orderFinishedInfo[index]);
                  },
                  itemCount: orderFinishedInfo.length,
                ),
              ),
              const SizedBox(height: 30),
              TextButton(
                onPressed: onTap ?? () {},
                child: const Text(
                  'Показать более старые',
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
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}

class MyOrders extends StatelessWidget {
  MyOrders({
    super.key,
    required this.orderFinishedInfo,
    this.onTap,
  });

  final Map<String, Object> orderFinishedInfo;
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
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
        left: 10,
        right: 10,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            child: Text(
              orderFinishedInfo['name'].toString(),
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Дата выполнения: ',
            titleDescription: orderFinishedInfo['finishedIn'] != null
                ? DateFormat('dd.MM.y')
                    .format(orderFinishedInfo['finishedIn'] as DateTime)
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Конечная цена: ',
            titleDescription: orderFinishedInfo['totalPrice'] != null
                ? format.format(orderFinishedInfo['totalPrice'])
                : '0',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Аукцион: ',
            titleDescription:
                orderFinishedInfo['isAuction'] as bool ? 'да' : 'нет',
          ),
          const SizedBox(
            height: 20,
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
