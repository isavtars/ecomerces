import 'package:flutter/material.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';

import '../../../app/styles/app_colors.dart';
import '../../widgets/custome_btns.dart';

class PasswordResetSucessFull extends StatelessWidget {
  const PasswordResetSucessFull({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: primarycolors,
        child: Column(
          children: [
            const Center(
                child: Padding(
              padding: EdgeInsets.only(top: 10.0),
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
              child: Image.asset(
                "assets/images/prss.png",
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              padding: const EdgeInsets.all(20),
              child: Column(
                children: [
                  Text(
                    "Password Reset successful",
                    style: myTextStyle(
                        textColor, 0.022.toResponsive(context), "Kalnia"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Your password resets has been done successfully ",
                    style: myTextStyle(
                        textColor, 0.01.toResponsive(context), "Poppinsmedium"),
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 0.9.w(context),
              height: 0.07.h(context),
              child: CustomBtn(
                btnTitle: "Continue to Accounts",
                onPressed: () {},
              ),
            ),
            const SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
