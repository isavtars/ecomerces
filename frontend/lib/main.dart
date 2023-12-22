import 'package:flutter/material.dart';
import 'package:frontend/screen/auth/signin/login_screen.dart';

import 'package:get/get.dart';

import 'screen/auth/signUp/register_screen.dart';
import 'utils/constance/router_const.dart';

void main() {
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
      home: const LoginScreen(),
      initialRoute: FlutterEcomerce.home,
      getPages: meroRoutes(),
    );
  }
}

List<GetPage<dynamic>> meroRoutes() {
  return [
    GetPage(name: FlutterEcomerce.home, page: () => const LoginScreen()),
    GetPage(name: FlutterEcomerce.register, page: () => const RegisterScreen()),
    GetPage(name: FlutterEcomerce.login, page: () => const LoginScreen()),
  ];
}
