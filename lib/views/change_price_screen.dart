import 'package:flutter/material.dart';
import 'package:myapp/views/create_order_screen.dart';


class ChangePrice extends StatelessWidget {
  const ChangePrice({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff28272d),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 200),
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
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
              child: TextFormField(
                decoration: const InputDecoration(labelText: 'Изменить цену :'),
                textInputAction: TextInputAction.next,
              ),
            ),
            const SizedBox(height: 400),
            const ElevatedButton(
              onPressed: saveForm,
              style: ButtonStyle(
                  padding: MaterialStatePropertyAll(
                      EdgeInsets.symmetric(horizontal: 60)),
                  backgroundColor: MaterialStatePropertyAll(Color(0xffd64743))),
              child: Text(
                'Изменить',
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
    );
  }
}
