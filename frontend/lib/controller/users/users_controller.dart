import 'dart:convert';
import 'dart:developer';
import 'package:frontend/app/manager/api/api_handles.dart';
import 'package:frontend/app/manager/constance/global_variable.dart';
import 'package:frontend/app/manager/peferences/preferences_manager.dart';
import 'package:frontend/model/user_models.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class UsersController extends GetxController {
  static UsersController instance = Get.find();

  UsersModels users = UsersModels(
      token: "",
      id: "",
      name: "",
      email: "",
      password: "",
      address: "",
      type: "",
      cart: []);

  getUsers() async {
    try {
      String token = await Preferences.getToken() ?? "Empty token";
      log('this is the token from ls $token');
      //have to verified toke and then get
      if (token.isNotEmpty) {
        http.Response res = await http
            .get(Uri.parse('$uri/getUsers'), headers: {tokenxauth: token});
        var data = jsonDecode(res.body);
        users = UsersModels.fromJson(data);
        log("usersId ${users.id}");
      } else {
        log("there is no any token");
      }
    } catch (err) {
      log(err.toString());
    }
  }
}
