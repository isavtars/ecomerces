import 'package:flutter/material.dart';
import 'package:frontend/app/routes/app_routes_mange.dart';
import 'package:frontend/controller/auth/auth_controller.dart';
import 'package:frontend/screen/splashscreen/splash_screen.dart';
import 'package:get/get.dart';

void main() async {
  // await GetStorage.init();
  Get.put(AuthController());
  runApp(
    const MyScreen(),
  );
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(useMaterial3: true, primaryColor: Colors.orange),
      home: const SplashScreen(),
      getPages: meroRoutes(),
    );
  }
}
