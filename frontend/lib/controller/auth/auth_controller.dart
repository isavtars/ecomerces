import 'dart:convert';
import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:frontend/app/manager/constance/global_variable.dart';
import 'package:frontend/model/user_models.dart';
import 'package:frontend/app/manager/api/api_handles.dart';
import 'package:frontend/app/manager/api/error_handling.dart';
import 'package:frontend/app/routes/router_const.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class AuthController extends GetxController {
  static AuthController instance = Get.find();

  var isTokenVerified = false.obs;

  //login Te

  //veriFiedToken
  veriFiedToken() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String mytoken = prefs.getString(tokenxauth) ?? "Empty Token";

      if (mytoken.isNotEmpty) {
        http.Response res = await http.post(Uri.parse('$uri/tokenIsValid'),
            headers: {"x-auth-token": mytoken});
        var response = jsonDecode(res.body);

        if (response == true) {
          Get.toNamed(FlutterEcomerce.usersHome);
        } else {
          Get.toNamed(FlutterEcomerce.login);
        }
      } else {
        log("no token  saved in ls");
      }
    } catch (err) {
      log(err.toString());
    }
  }

  // Rx<UsersModels> users = UsersModels(
  //     token: "",
  //     id: "",
  //     name: "",
  //     email: "",
  //     password: "",
  //     address: "",
  //     type: "",
  //     cart: []).obs;

  signUP(
      {required String name,
      required BuildContext context,
      required String email,
      required String password}) async {
    try {
      log("Sighnup_methods");
      UsersModels userModel = UsersModels(
          id: "",
          address: "",
          cart: [],
          type: "",
          token: '',
          name: name,
          email: email,
          password: password);

      var data = jsonEncode(userModel.toJson());

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
            Fluttertoast.showToast(
                msg: " 'Account created! Login with the same credentials!",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);

            Get.toNamed(FlutterEcomerce.login);
          });
    } catch (err) {
      Fluttertoast.showToast(
          msg: err.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
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

      if (context.mounted) {
        httpErrorHandle(
            response: res,
            context: context,
            onSuccess: () async {
              var data = jsonDecode(res.body);

              // users = UsersModels.fromJson(data).obs;

              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.setString(tokenxauth, data['token']);

              Fluttertoast.showToast(
                  msg: 'Login Sucess',
                  toastLength: Toast.LENGTH_SHORT,
                  gravity: ToastGravity.CENTER,
                  timeInSecForIosWeb: 1,
                  backgroundColor: Colors.red,
                  textColor: Colors.white,
                  fontSize: 16.0);

              Future.delayed(const Duration(milliseconds: 3000));
              Get.toNamed(FlutterEcomerce.usersHome);
            });
      }
    } catch (err) {
      Fluttertoast.showToast(
          msg: err.toString(),
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0);
    }
  }
}
