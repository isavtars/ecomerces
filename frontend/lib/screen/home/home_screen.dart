import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:frontend/app/constance/global_variable/global_variable.dart';
import 'package:frontend/app/styles/app_colors.dart';
import 'package:frontend/controller/auth/auth_controller.dart';
import 'package:frontend/controller/global/controller.dart';
import 'package:frontend/screen/widgets/extension_responsive.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    Get.put(AuthController());
    super.initState();
  }

  String token = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.all(0.033.toResponsive(context)),
        child: Column(children: [
          Obx(() => Text(authCtrl.myusers.value.token)),
          Text("This_home_pages",
              style: GoogleFonts.poppins(
                  fontSize: 0.015.toResponsive(context), color: kBlack)),
          // Text(authCtrl.users.token),
          ElevatedButton(
              onPressed: () async {
                SharedPreferences pre = await SharedPreferences.getInstance();

                setState(() {
                  token = (pre.getString(tokenxauth))!;
                  log('this is my key from the local storages  $token');
                });
              },
              child: const Text("Button")),
          Text(token)
        ]),
      ),
    );
  }
}
