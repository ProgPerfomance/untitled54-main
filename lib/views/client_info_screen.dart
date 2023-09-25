import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../data/data.dart';
import '../ui/widgets/widgets.dart';

class ClientInfoScreen extends StatelessWidget {
  const ClientInfoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            margin: const EdgeInsets.only(
              top: 30,
            ),
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
            child: Column(
              children: [
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
                    top: 15,
                    left: 20,
                    right: 20,
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: ClientInfoFull(
                    clientInfoFull: clientInfoFull,
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  alignment: Alignment.center,
                  child: const Text(
                    'Заказы',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 30,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                const ToggleOrders(),
                const SizedBox(height: 30),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(horizontal: 35),
                  height: 500,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return FinishedOrderItem(
                          orderFinishedInfo: orderFinishedInfo[index]);
                    },
                    itemCount: orderFinishedInfo.length,
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

class ClientInfoFull extends StatelessWidget {
  const ClientInfoFull({
    super.key,
    required this.clientInfoFull,
  });

  final Map<String, Object> clientInfoFull;

  String getRating(String rating) {
    return '$rating/100';
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                // width: double.infinity,
                alignment: Alignment.center,
                child: Text(
                  ' ${clientInfoFull['name'].toString()}',
                  style: const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Вид деятельности: ',
            titleDescription: clientInfoFull['kindActivity'] != null
                ? clientInfoFull['kindActivity'].toString()
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Рейтинг: ',
            titleDescription: clientInfoFull['rating'] != null
                ? getRating(clientInfoFull['rating'].toString())
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Зарегистрирован: ',
            titleDescription: clientInfoFull['registeredAt'] != null
                ? DateFormat('dd.MM.y').format(
                    clientInfoFull['registeredAt'] as DateTime,
                  )
                : '',
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Проверенна системой CPM: ',
            titleDescription:
                clientInfoFull['isVerified'] as bool ? 'Да' : 'Нет',
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}

class FinishedOrderItem extends StatelessWidget {
  FinishedOrderItem({
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
              orderFinishedInfo['name'] as String,
              style: const TextStyle(
                fontWeight: FontWeight.w300,
                fontSize: 20,
              ),
            ),
          ),
          const SizedBox(height: 10),
          InfoRow(
            title: 'Дата выполнения: ',
            titleDescription: DateFormat('dd.MM.y')
                .format(
                  orderFinishedInfo['finishedIn'] as DateTime,
                )
                .toString(),
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Конечная цена: ',
            titleDescription:
                format.format(orderFinishedInfo['totalPrice']).toString(),
          ),
          const SizedBox(height: 5),
          InfoRow(
            title: 'Аукцион: ',
            titleDescription:
                orderFinishedInfo['isAuction'] as bool ? 'Да' : 'Нет',
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

class ToggleOrders extends StatefulWidget {
  const ToggleOrders({
    super.key,
  });

  @override
  State<ToggleOrders> createState() => _ToggleOrders();
}

const List<Widget> ordersTypes = <Widget>[
  Text('Активные'),
  Text('Архив'),
];

class _ToggleOrders extends State<ToggleOrders> {
  final List<bool> _selectedFruits = <bool>[true, false];

  @override
  Widget build(BuildContext context) {
    final mediaQueryWidth = MediaQuery.of(context).size.width - 100;

    return ToggleButtons(
      onPressed: (int index) {
        setState(() {
          for (int i = 0; i < _selectedFruits.length; i++) {
            _selectedFruits[i] = i == index;
          }
        });
      },
      borderRadius: const BorderRadius.all(Radius.circular(8)),
      selectedBorderColor: const Color(0xffd64743),
      selectedColor: const Color(0xffd64743),
      fillColor: const Color(0xff333238),
      color: const Color(0xffdfdee4),
      constraints: BoxConstraints(
        minHeight: 40.0,
        minWidth: mediaQueryWidth / 2,
      ),
      isSelected: _selectedFruits,
      children: ordersTypes,
    );
  }
}
