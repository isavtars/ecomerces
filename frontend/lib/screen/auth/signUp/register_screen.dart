import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/utils/extension.dart';

import '../../../utils/constance/app_colors.dart';

import '../../../utils/constance/router_const.dart';
import '../../widgets/custome_btns.dart';
import '../../widgets/custome_inputs.dart';
import '../../widgets/logo_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

final nameController = TextEditingController();
final emailController = TextEditingController();
final passwordController = TextEditingController();
final confirmpassword = TextEditingController();

class _RegisterScreenState extends State<RegisterScreen> {
  @override
  Widget build(BuildContext context) {
    dynamic size, height, width;
    size = MediaQuery.of(context).size;
    height = size.height;
    width = size.width;

    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Container(
            height: height,
            width: width,
            color: primarycolors,
          ),
          Positioned(
              top: 140,
              height: 0.8.h(context),
              width: width,
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: secondarycolors,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    logoheader(context),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "YourName",
                        icons: Icons.person,
                        textEditingController: nameController,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "Email",
                        icons: Icons.email,
                        textEditingController: emailController,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "Password",
                        icons: FontAwesomeIcons.lock,
                        textEditingController: passwordController,
                        credentials: true,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    CustomeInputs(
                        hintText: "Confirm-password",
                        icons: FontAwesomeIcons.lock,
                        credentials: true,
                        textEditingController: confirmpassword,
                        textinputTypes: TextInputType.text),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(children: [
                      Checkbox(value: true, onChanged: (bool) {}),
                      Expanded(
                        child: Text(
                          "I agree to the terms and conditions ",
                          style: myTextStyle(textColor,
                              0.012.toResponsive(context), "Poppinsmedium"),
                          textAlign: TextAlign.center,
                        ),
                      )
                    ]),
                    const SizedBox(
                      height: 15,
                    ),
                    SizedBox(
                        width: 0.84.w(context),
                        height: 0.07.h(context),
                        child: CustomBtn(
                            btnTitle: "SignUp",
                            width: width,
                            height: height,
                            onPressed: () {})),
                    const SizedBox(
                      height: 15,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't you have account??",
                            style: myTextStyle(textColor,
                                0.01.toResponsive(context), "Poppinsmedium")),
                        TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, FlutterEcomerce.login);
                            },
                            child: const Text("Login", style: signuplin))
                      ],
                    ),
                  ],
                ),
              ))
        ]),
      ),
    );
  }
}
