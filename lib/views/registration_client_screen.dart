import 'package:flutter/material.dart';

class RegistrationClientScreen extends StatefulWidget {
  RegistrationClientScreen({
    super.key,
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

  var isChecked = false;

  @override
  State<RegistrationClientScreen> createState() =>
      _RegistrationClientScreenState();
}

class _RegistrationClientScreenState extends State<RegistrationClientScreen> {
  void newClient() {
    if (widget.isChecked) {
      Navigator.of(context).pushReplacementNamed('/orders');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      appBar: AppBar(
        centerTitle: true,
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
              onPressed: () => newClient(),
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
                          decoration: const InputDecoration(
                              labelText: 'Эл. почта или номер телефона'),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Пароль'),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration: const InputDecoration(labelText: 'Имя'),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          decoration:
                              const InputDecoration(labelText: 'Фамилия'),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            Checkbox(
                              semanticLabel: 'Terms of Use',
                              checkColor: const Color(0xffdfdee4),
                              fillColor: const MaterialStatePropertyAll(
                                Color(0xffd64743),
                              ),
                              value: widget.isChecked,
                              shape: const CircleBorder(),
                              onChanged: (bool? value) {
                                setState(
                                  () {
                                    widget.isChecked = value!;
                                  },
                                );
                              },
                            ),
                            Container(
                              alignment: Alignment.center,
                              child: const Text(
                                'я принимаю соглашение пользоваля',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              ElevatedButton(
                onPressed: () => newClient(),
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 60),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xffd64743),
                  ),
                ),
                child: const Text(
                  'Зарегистриваться',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 15,
                    // color: Color(0xffdfdee4),
                    shadows: [
                      Shadow(
                        offset: Offset(0, -5),
                        color: Color(0xffdfdee4),
                      )
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
