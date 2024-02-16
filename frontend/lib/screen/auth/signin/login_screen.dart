import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';
import 'package:get/get.dart';

import '../../../controller/auth/auth_controller.dart';
import '../../../app/styles/app_colors.dart';
import '../../../app/routes/router_const.dart';
import '../../widgets/custome_btns.dart';
import '../../widgets/custome_inputs.dart';
import '../../widgets/logo_header.dart';
import '../../widgets/social_login_btn.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final authController = Get.put(AuthController());
  final TextEditingController _email = TextEditingController();
  final TextEditingController _password = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _email.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Container(
              height: 1.0.h(context),
              width: 1.0.w(context),
              color: primarycolors,
              padding: EdgeInsets.symmetric(horizontal: 0.033.h(context)),
            ),
            Positioned(
              top: 0.14.h(context),
              height: 0.74.h(context),
              width: 0.47.w(context),
              child: Container(
                margin: const EdgeInsets.all(20),
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                    color: secondarycolors,
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                child: Column(
                  children: [
                    logoheader(context),
                    Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            CustomeInputs(
                              hintText: "Emaill",
                              textEditingController: _email,
                              icons: FontAwesomeIcons.mailchimp,
                              textinputTypes: TextInputType.emailAddress,
                              validators: (value) {
                                if (value == null || value.isEmpty) {
                                  return 'Please enter some text';
                                }
                                return null;
                              },
                            ),
                            const SizedBox(
                              height: 15,
                            ),
                            CustomeInputs(
                              hintText: "password",
                              textEditingController: _password,
                              icons: FontAwesomeIcons.lock,
                              credentials: true,
                              textinputTypes: TextInputType.emailAddress,
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
                      height: 8,
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: TextButton(
                        onPressed: () {
                          Get.toNamed(FlutterEcomerce.forgetpassword);
                        },
                        child: Text(
                          "Forget Password??",
                          style: myTextStyle(textColor,
                              0.01.toResponsive(context), "Poppinsmedium"),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomBtn(
                        btnTitle: "Login",
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            authController.login(
                                context: context,
                                email: _email.text.trim(),
                                password: _password.text.trim());
                          }
                        }),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Text(
                        "or by social accounts",
                        style: myTextStyle(textColor,
                            0.01.toResponsive(context), "Poppinsmedium"),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.facebook,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.google,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.twitter,
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        SocialLoginBtn(
                          icons: FontAwesomeIcons.github,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Don't have an acounts??",
                            style: myTextStyle(textColor,
                                0.01.toResponsive(context), "Poppinsmedium"),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.pushNamed(
                                  context, FlutterEcomerce.register);
                            },
                            child: const Text(
                              "SignUp",
                              style: signuplin,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
