import 'package:flutter/material.dart';
import 'package:frontend/utils/constance/app_colors.dart';
import 'package:frontend/utils/extension.dart';

import '../../widgets/custome_btns.dart';
import '../../widgets/custome_inputs.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({super.key});

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
                    "Reset pasword",
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
                        "Setyour Password",
                        style: myTextStyle(
                            textColor, 0.022.toResponsive(context), "Kalnia"),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        "Enter your new passwor password to  ",
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
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomeInputs(
                      hintText: "password",
                      credentials: true,
                      icons: Icons.lock,
                      textinputTypes: TextInputType.emailAddress),
                ),
                const SizedBox(
                  height: 15,
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: CustomeInputs(
                      hintText: "Confirm_password",
                      credentials: true,
                      icons: Icons.lock,
                      textinputTypes: TextInputType.emailAddress),
                ),
                SizedBox(
                  height: 0.02.h(context),
                ),
                SizedBox(
                  width: 0.9.w(context),
                  height: 0.07.h(context),
                  child: CustomBtn(
                    btnTitle: "Change password",
                    onPressed: () {},
                    width: 370,
                  ),
                )
              ],
            )),
      ),
    );
  }
}
