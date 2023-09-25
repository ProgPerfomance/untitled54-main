import 'package:flutter/material.dart';
import 'package:myapp/constants/icon_path.dart';
import 'package:myapp/constants/liam_texts.dart';
import 'package:myapp/feature/registration/register/widgets/auth_text_field.dart';
import 'package:myapp/feature/registration/register/widgets/check_button.dart';
import 'package:myapp/feature/registration/register/widgets/registration_button.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';

class AuthForCustomer extends StatefulWidget {
  AuthForCustomer({super.key});

  @override
  State<AuthForCustomer> createState() => _AuthForCustomerState();
}

class _AuthForCustomerState extends State<AuthForCustomer> {
  final TextEditingController tName = TextEditingController(),
      passwordController = TextEditingController(),
      email = TextEditingController(),
      lastName = TextEditingController();

  onSubmit() {
    Navigator.pushNamed(context, '/home');
  }

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: Image.asset(logo),
      ),
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: width * 0.05,
          ),
          child: Column(
            children: [
              Text(
                regForCustomer,
                style: HeadlinesTextStyle.style700w33
                    .copyWith(color: MyColors.black),
              ),
              SizedBox(height: height * 0.09),
              AuthTextField(
                title: emailOrNumber,
                controller: email,
              ),
              SizedBox(height: height * 0.02),
              AuthTextField(
                title: password,
                controller: passwordController,
              ),
              SizedBox(height: height * 0.02),
              AuthTextField(
                title: name,
                controller: tName,
              ),
              SizedBox(height: height * 0.02),
              AuthTextField(
                title: serName,
                controller: lastName,
              ),
              SizedBox(height: height * 0.07),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CheckButton(),
                  Text(
                    agree,
                    style: HeadlinesTextStyle.style700w18
                        .copyWith(color: MyColors.black),
                  ),
                ],
              ),
              SizedBox(height: height * 0.03),
              AuthButton(
                title: reg,
                onTap: onSubmit,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
