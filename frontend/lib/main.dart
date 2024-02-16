import 'package:flutter/material.dart';
import 'package:frontend/controller/auth/auth_controller.dart';
import 'package:frontend/screen/auth/signin/login_screen.dart';
import 'package:frontend/screen/home/home_screen.dart';
import 'package:frontend/screen/splashscreen/splash_screen.dart';

import 'package:get/get.dart';

import 'screen/auth/signUp/register_screen.dart';
import 'app/routes/router_const.dart';

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

List<GetPage<dynamic>> meroRoutes() {
  return [
    GetPage(name: FlutterEcomerce.home, page: () => const HomeScreen()),
    GetPage(name: FlutterEcomerce.login, page: () => const LoginScreen()),
    GetPage(name: FlutterEcomerce.register, page: () => const RegisterScreen()),
  ];
}
