import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/controller/auth/auth_controller.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';
import 'package:get/get.dart';

import '../../../app/styles/app_colors.dart';

import '../../../app/routes/router_const.dart';
import '../../widgets/custome_btns.dart';
import '../../widgets/custome_inputs.dart';
import '../../widgets/logo_header.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final authController = Get.put(AuthController());

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

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
                    Form(
                        key: formKey,
                        child: Column(
                          children: [
                            CustomeInputs(
                                hintText: "YourName",
                                textEditingController: nameController,
                                icons: Icons.person,
                                validators: (value) {
                                  if (value == null || value.isEmpty) {
                                    return 'Please enter some text';
                                  }
                                  return null;
                                },
                                textinputTypes: TextInputType.text),
                            const SizedBox(
                              height: 14,
                            ),
                            CustomeInputs(
                              hintText: "Email",
                              icons: Icons.email,
                              textinputTypes: TextInputType.text,
                              textEditingController: emailController,
                              validators: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 14,
                            ),
                            CustomeInputs(
                              hintText: "Password",
                              icons: FontAwesomeIcons.lock,
                              textEditingController: passwordController,
                              credentials: true,
                              textinputTypes: TextInputType.text,
                              validators: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                          ],
                        )),
                    const SizedBox(
                      height: 14,
                    ),
                    Row(children: [
                      Checkbox(
                          value: true,
                          onChanged: (value) {
                            setState(() {});
                          }),
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
                            onPressed: () {
                              if (formKey.currentState!.validate()) {
                                authController.signUP(
                                    context: context,
                                    name: nameController.text,
                                    email: emailController.text,
                                    password: passwordController.text);
                              }
                            })),
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
