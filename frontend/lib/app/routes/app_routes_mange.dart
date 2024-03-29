import 'package:frontend/app/routes/router_const.dart';
import 'package:frontend/screen/auth/forgetpassword/forgetpassword_screen.dart';
import 'package:frontend/screen/auth/signUp/register_screen.dart';
import 'package:frontend/screen/auth/signin/login_screen.dart';
import 'package:frontend/screen/users/users_screen.dart';

import 'package:get/get.dart';

List<GetPage<dynamic>> meroRoutes() {
  return [
    GetPage(
        name: FlutterEcomerce.usersHome, page: () => const UsersScreen()),
    GetPage(name: FlutterEcomerce.login, page: () => const LoginScreen()),
    GetPage(name: FlutterEcomerce.register, page: () => const RegisterScreen()),
    GetPage(
        name: FlutterEcomerce.forgetpassword,
        page: () => const ForgetPassworScreen())
  ];
}
