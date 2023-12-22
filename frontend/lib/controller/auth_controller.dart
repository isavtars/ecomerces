import 'dart:convert';
import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:frontend/model/user_models.dart';

import 'package:frontend/utils/api/api_handles.dart';
import 'package:frontend/utils/api/error_handling.dart';
import 'package:frontend/utils/constance/router_const.dart';
import 'package:frontend/utils/snack_bar.dart';
import 'package:get/get.dart';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

import '../utils/api/global_variable.dart';

class AuthController extends GetxController {
  var users = <UserModel>[].obs;

  signUP(
      {required String name,
      required BuildContext context,
      required String email,
      required String password}) async {
    try {
      UserModel userModel = UserModel(
          id: "",
          address: "",
          cart: [],
          type: "",
          name: name,
          email: email,
          password: password);

      var data = jsonEncode(userModel.tojson());
      // var response = await http.post(uri, body: data);

      http.Response res = await http.post(Uri.parse("$uri/api/signup"),
          body: data,
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });
      // ignore: use_build_context_synchronously
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () {
            showSnackBar(context,
                " 'Account created! Login with the same credentials!',", true);
            Get.toNamed(FlutterEcomerce.login);
          });
    } catch (err) {
      // ignore: use_build_context_synchronously
      showSnackBar(context, err.toString(), false);
    }
  }

  //login
  login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      http.Response res = await http.post(Uri.parse("$uri/api/signin"),
          body: jsonEncode({"email": email, "password": password}),
          headers: <String, String>{
            'Content-Type': 'application/json; charset=UTF-8',
          });

      // ignore: use_build_context_synchronously
      httpErrorHandle(
          response: res,
          context: context,
          onSuccess: () async {
            // SharedPreferences prefs = await SharedPreferences.getInstance();

            var data = jsonDecode(res.body);
            // users.addAll(data.map((item) => UserModel.fromJson(item)).toList());
            log(data.toString());
            // await prefs.setString(tokenxauth, res.body['token'].toString());

            // // ignore: use_build_context_synchronously
            // showSnackBar(context, "Login Suceessfully", true);
            // Get.toNamed(FlutterEcomerce.home);
          });
    } catch (err) {
      // ignore: use_build_context_synchronously
      showSnackBar(context, err.toString(), false);
    }
  }
}
