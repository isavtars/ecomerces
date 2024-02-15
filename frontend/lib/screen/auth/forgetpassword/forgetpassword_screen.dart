import 'package:flutter/material.dart';
import 'package:frontend/app/constance/extensions/extension.dart';

import '../../../app/styles/app_colors.dart';
import '../../widgets/custome_btns.dart';
import '../../widgets/custome_inputs.dart';

class ForgetPassworScreen extends StatelessWidget {
  const ForgetPassworScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
            width: double.maxFinite,
            color: primarycolors,
            child: Column(
              // crossAxisAlignment: ,
              children: [
                const Center(
                    child: Padding(
                  padding: EdgeInsets.only(top: 8.0),
                  child: Text(
                    "Forget Password",
                    style: secondText,
                  ),
                )),
                const SizedBox(
                  height: 20,
                ),
                SizedBox(
                  height: 0.3.h(context),
                  width: 1.0.w(context),
                  child: Image.asset("assets/images/forgetpassword.png"),
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Text(
                        "Forget your Password??",
                        style: myTextStyle(
                            textColor, 0.022.toResponsive(context), "Kalnia"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter your Email addres we will provide the password restlink in your email",
                        style: myTextStyle(textColor,
                            0.01.toResponsive(context), "Poppinsmedium"),
                        textAlign: TextAlign.center,
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: CustomeInputs(
                      hintText: "Email",
                      icons: Icons.email,
                      textinputTypes: TextInputType.emailAddress),
                ),
                SizedBox(
                  height: 0.0003.h(context),
                ),
                SizedBox(
                  width: 0.9.w(context),
                  height: 0.07.h(context),
                  child: CustomBtn(
                      btnTitle: "Send invitation",
                      width: 370,
                      onPressed: () {}),
                )
              ],
            )),
      ),
    );
  }
}
