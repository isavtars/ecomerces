import 'dart:async';

import 'package:flutter/material.dart';
import 'package:frontend/app/manager/assets/app_images.dart';
import 'package:frontend/controller/global/controller.dart';
import 'package:frontend/screen/widgets/extension_responsive.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      authCtrl.veriFiedToken();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 0.033.w(context)),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          Image.asset(amazonlogo),
          Container(
            alignment: Alignment.center,
            child: const CircularProgressIndicator(),
          )
        ]),
      ),
    );
  }
}
