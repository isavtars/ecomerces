import 'package:flutter/material.dart';
import 'package:frontend/app/manager/assets/app_images.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';

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
            width: double.infinity,
            height: double.infinity,
            color: primarycolors,
            padding: EdgeInsets.symmetric(horizontal: 0.033.w(context)),
            child: Column(
              children: [
                SizedBox(
                  height: 0.3.h(context),
                  width: 1.0.w(context),
                  child: Image.asset(amazonlogo),
                ),
                SizedBox(
                  height: 0.020.h(context),
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
                      SizedBox(
                        height: 0.010.h(context),
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
                SizedBox(
                  height: 0.010.h(context),
                ),
                const CustomeInputs(
                    hintText: "Email",
                    icons: Icons.email,
                    textinputTypes: TextInputType.emailAddress),
                SizedBox(
                  height: 0.03.h(context),
                ),
                CustomBtn(btnTitle: "Send invitation", onPressed: () {})
              ],
            )),
      ),
    );
  }
}
