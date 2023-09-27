import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/views/my_orders_screen.dart';

TextEditingController emailEditingController = TextEditingController();
TextEditingController passwordEditingController = TextEditingController();

// ignore: must_be_immutable
class AuthorizationScreen extends StatefulWidget {
  AuthorizationScreen({
    Key? key,
    this.onTap,
  }) : super(key: key);

  final VoidCallback? onTap;
  final createOrderForm = GlobalKey<FormState>();
  var userInfo = {
    'name': '',
    'password': 0,
  };

  @override
  State<AuthorizationScreen> createState() => _AuthorizationScreenState();
}

class _AuthorizationScreenState extends State<AuthorizationScreen> {
  @override
  Widget build(BuildContext context) {
    void saveUser()async {
    final UserCredential userCredential =await FirebaseAuth.instance.signInWithEmailAndPassword(email: emailEditingController.text, password: passwordEditingController.text);
      final User? user = userCredential.user;
    DocumentSnapshot data= await FirebaseFirestore.instance.collection('users').doc(user!.uid).get();
    if(data['buyer'] == false) {
      Navigator.of(context).pushReplacementNamed('/orders');
    }
    else {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MyOrdersScreen(uid: user.uid,)));
    }
    }

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
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 60),
              Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 3),
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
                  'Авторизация',
                  style: TextStyle(
                    fontSize: 27,
                    color: Color(0xffFFFFFF),
                  ),
                ),
              ),
              const SizedBox(height: 50),
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
                          controller: emailEditingController,
                          decoration: const InputDecoration(
                              labelText: 'Эл. почта'),
                          textInputAction: TextInputAction.next,
                        ),
                        const SizedBox(height: 10),
                        TextFormField(
                          controller: passwordEditingController,
                          decoration:
                              const InputDecoration(labelText: 'Пароль'),
                          textInputAction: TextInputAction.next,
                          keyboardType: TextInputType.visiblePassword,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Забыли пароль?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffd64743),
                          decorationThickness: 2,
                          color: Colors.transparent,
                          shadows: [
                            Shadow(
                                offset: Offset(0, -10),
                                color: Color(0xffdfdee4))
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    borderRadius: BorderRadius.circular(10),
                    child: Container(
                      alignment: Alignment.center,
                      child: const Text(
                        'Нет аккаунта?',
                        style: TextStyle(
                          fontWeight: FontWeight.w600,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                          decorationColor: Color(0xffd64743),
                          decorationThickness: 2,
                          color: Colors.transparent,
                          shadows: [
                            Shadow(
                                offset: Offset(0, -10),
                                color: Color(0xffdfdee4))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: saveUser,
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll(
                    EdgeInsets.symmetric(horizontal: 60),
                  ),
                  backgroundColor: MaterialStatePropertyAll(
                    Color(0xffd64743),
                  ),
                ),
                child: const Text(
                  'Войти',
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
