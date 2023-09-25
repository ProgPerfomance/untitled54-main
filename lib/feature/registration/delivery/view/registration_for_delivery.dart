import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:myapp/constants/icon_path.dart';
import 'package:myapp/constants/liam_texts.dart';
import 'package:myapp/controller/auth_controller.dart';
import 'package:myapp/feature/registration/delivery/models/user_model.dart';
import 'package:myapp/feature/registration/delivery/widgets/container_for_company.dart';
import 'package:myapp/feature/registration/delivery/widgets/container_for_private.dart';
import 'package:myapp/feature/registration/delivery/widgets/delivery_container.dart';
import 'package:myapp/feature/registration/register/widgets/check_button.dart';
import 'package:myapp/feature/registration/register/widgets/registration_button.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';
import 'package:myapp/utils.dart';

class AuthForCarrier extends StatefulWidget {
  const AuthForCarrier({super.key});

  @override
  State<AuthForCarrier> createState() => _AuthForCarrierState();
}

class _AuthForCarrierState extends State<AuthForCarrier> {
  bool isCompany = false;
  late TextEditingController tName, tLastName, tCompany, tPassword, tEmail;

  @override
  void initState() {
    super.initState();
    tName = TextEditingController();
    tLastName = TextEditingController();
    tCompany = TextEditingController();
    tPassword = TextEditingController();
    tEmail = TextEditingController();
  }

  onSubmit() async {
    try {
      AuthDeliveryController(
              password: tPassword.text,
              email: tEmail.text,
              name: tName.text,
              lastname: tLastName.text)
          .signUpUser();
      Navigator.pushNamed(context, '/home');
    } on FirebaseAuthException catch (e) {
      ScaffoldMessenger.maybeOf(context)?.showSnackBar(
        SnackBar(
          content: Text(e.code),
          behavior: SnackBarBehavior.floating,
        ),
      );
      return;
    }
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
                regForCarrier,
                style: HeadlinesTextStyle.style700w33.copyWith(
                  color: MyColors.black,
                ),
              ),
              isCompany
                  ? ContainerForCompany(
                      company: tCompany,
                      email: tEmail,
                      passwordController: tPassword,
                      field4: tCompany,
                    )
                  : ContainerForPrivate(
                      tName: tName,
                      lastName: tLastName,
                      email: tEmail,
                      passwordController: tPassword,
                    ),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarrierContainer(
                    title: imVip,
                    backColor: isCompany
                        ? MyColors.laim
                        : MyColors.laim.withOpacity(
                            0.4,
                          ),
                    onTap: () {
                      setState(() {
                        isCompany = false;
                      });
                    },
                  ),
                  CarrierContainer(
                    title: company,
                    backColor: isCompany
                        ? MyColors.laim.withOpacity(
                            0.4,
                          )
                        : MyColors.laim,
                    onTap: () {
                      setState(() {
                        isCompany = true;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(height: height * 0.04),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CheckButton(),
                  Text(
                    agree,
                    style: HeadlinesTextStyle.style700w18.copyWith(
                      color: MyColors.black,
                    ),
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
