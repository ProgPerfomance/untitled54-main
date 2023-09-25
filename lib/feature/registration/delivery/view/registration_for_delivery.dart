import 'package:flutter/material.dart';
import 'package:myapp/constants/icon_path.dart';
import 'package:myapp/constants/liam_texts.dart';
import 'package:myapp/feature/registration/delivery/widgets/container_for_company.dart';
import 'package:myapp/feature/registration/delivery/widgets/container_for_private.dart';
import 'package:myapp/feature/registration/delivery/widgets/delivery_container.dart';
import 'package:myapp/feature/registration/register/widgets/check_button.dart';
import 'package:myapp/feature/registration/register/widgets/registration_button.dart';
import 'package:myapp/ui/colors.dart';
import 'package:myapp/ui/text_style.dart';

class AuthForCarrier extends StatefulWidget {
  const AuthForCarrier({super.key});

  @override
  State<AuthForCarrier> createState() => _AuthForCarrierState();
}

class _AuthForCarrierState extends State<AuthForCarrier> {
  bool active = false;

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
              active
                  ? const ContainerForCompany()
                  : const ContainerForPrivate(),
              SizedBox(height: height * 0.03),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CarrierContainer(
                    title: imVip,
                    backColor: active
                        ? MyColors.laim
                        : MyColors.laim.withOpacity(
                            0.4,
                          ),
                    onTap: () {
                      setState(() {
                        active = !active;
                      });
                    },
                  ),
                  CarrierContainer(
                    title: company,
                    backColor: active
                        ? MyColors.laim.withOpacity(
                            0.4,
                          )
                        : MyColors.laim,
                    onTap: () {
                      setState(() {
                        active = !active;
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
              const AuthButton(title: reg),
            ],
          ),
        ),
      ),
    );
  }
}
