import 'package:frontend/model/user_models.dart';
import 'package:get/get.dart';

class UsersController extends GetxController {
  static UsersController instance = Get.find();

  UsersModels _users = UsersModels(
      token: "",
      id: "",
      name: "",
      email: "",
      password: "",
      address: "",
      type: "",
      cart: []);


      UsersModels get users=>_users;

  
  // setUsers(String user) {
  //   _users = UsersModels.fromJson(user);
  //   update();
  // }
}
