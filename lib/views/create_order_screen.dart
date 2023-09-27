import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

TextEditingController typeEditingController = TextEditingController();
TextEditingController massEditingController = TextEditingController();
TextEditingController volumeEditingController = TextEditingController();
TextEditingController priceEditingController = TextEditingController();
TextEditingController aukcionEditingController = TextEditingController();
bool aucbool = false;
class CreateOrderScreen extends StatefulWidget {
  final uid;
  CreateOrderScreen({
    super.key,
    required this.uid,
    this.onTap,
  });

  final VoidCallback? onTap;
  final createOrderForm = GlobalKey<FormState>();
  var newOrder = {
    'cargoType': '',
    'totalCargoWeight': 0,
    'totalCargoVolume': 0,
    'price': 0,
    'isAuction': true,
  };

  @override
  State<CreateOrderScreen> createState() => _CreateOrderScreenState();
}



class _CreateOrderScreenState extends State<CreateOrderScreen> {
  @override
  Widget build(BuildContext context) {
    void saveForm() {
      FirebaseFirestore.instance.collection('orders').add({
        'name': typeEditingController.text,
        'mass': massEditingController.text,
        'volume': volumeEditingController.text,
        'buyer': 'ff',
        'maxprice': priceEditingController.text,
        'auc': aucbool == false ? 'нет' : 'да',
      }); FirebaseFirestore.instance.collection('users').doc(widget.uid).collection('orders').add({
        'name': typeEditingController.text,
        'mass': massEditingController.text,
        'volume': volumeEditingController.text,
        'buyer': 'ff',
        'maxprice': priceEditingController.text,
        'auc': aucbool == false ? 'нет' : 'да',
      });
      Navigator.pop(context);
    }
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
            'Заказы',
            style: TextStyle(
              fontSize: 25,
              color: Color(0xffFFFFFF),
            ),
          ),
        ),
        actions: [
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
            child:  IconButton(
              onPressed: saveForm,
              icon: const Icon(Icons.save),
              color: const Color(
                0xffd64743,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 70, vertical: 30),
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
                  'Информация о заказе',
                  style: TextStyle(
                    fontSize: 27,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 30),
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
                  top: 30,
                  left: 20,
                  right: 20,
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
                child: Form(
                  key: const Key('createOrderForm'),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        TextFormField(
                          controller: typeEditingController,
                          decoration:
                              const InputDecoration(labelText: ' Название:'),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: massEditingController,
                          decoration:
                              const InputDecoration(labelText: 'Масса груза:'),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: volumeEditingController,
                          decoration:
                              const InputDecoration(labelText: 'Объём груза:'),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: priceEditingController,
                          decoration:
                              const InputDecoration(labelText: 'Бюджет:'),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.number,
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(
                          onPressed: () {aucbool = !aucbool;
                            setState(() {
                            });},
                          style: ButtonStyle(
                              padding: const MaterialStatePropertyAll(
                                  EdgeInsets.symmetric(horizontal: 60)),
                              backgroundColor:
                                  aucbool == false ?
                              const MaterialStatePropertyAll(Color(0xffd64743)) : const MaterialStatePropertyAll(Colors.green)),
                          child: const Text(
                            'Аукцион',
                            style: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              // color: Color(0xffdfdee4),
                              shadows: [
                                Shadow(offset: Offset(0, -5), color: Color(0xffdfdee4))
                              ],
                              color: Colors.transparent,
                              decorationColor: Color(0xff333238),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
               ElevatedButton(
                onPressed: saveForm,
                style: const ButtonStyle(
                    padding: MaterialStatePropertyAll(
                        EdgeInsets.symmetric(horizontal: 60)),
                    backgroundColor:
                        MaterialStatePropertyAll(Color(0xffd64743))),
                child: const Text(
                  'Создать',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
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
    );
  }
}
