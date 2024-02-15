// class UserModel {
//   final String id;
//   final String name;
//   final String email;
//   final String password;
//   final String address;
//   final List cart;
//   final String type;

//   UserModel(
//       {required this.id,
//       required this.name,
//       required this.email,
//       required this.password,
//       required this.address,
//       required this.cart,
//       required this.type});

//   Map<String, dynamic> tojson() => {
//         "id": id,
//         "name": name,
//         "email": email,
//         "password": password,
//         "address": address,
//         "cart": cart,
//         "type": type
//       };

//   factory UserModel.fromJson(Map<String, dynamic> json) {
//     List cart = json['cart'] is List ? json['cart'] : [];
//     return UserModel(
//         id: json['id'],
//         name: json['name'],
//         email: json['email'],
//         password: json['password'],
//         address: json['address'],
//         cart: json['cart'] ?? [],
//         type: json['type']);
//   }
// }

// import 'dart:convert';

// UsersModels usersModelsFromJson(String str) =>
//     UsersModels.fromJson(json.decode(str));

// String usersModelsToJson(UsersModels data) => json.encode(data.toJson());

class UsersModels {
  String token;
  String id;
  String name;
  String email;
  String password;
  String address;
  String type;
  List<dynamic> cart;

  UsersModels({
    required this.token,
    required this.id,
    required this.name,
    required this.email,
    required this.password,
    required this.address,
    required this.type,
    required this.cart,
  });

  factory UsersModels.fromJson(Map<String, dynamic> json) => UsersModels(
        token: json["token"],
        id: json["_id"],
        name: json["name"],
        email: json["email"],
        password: json["password"],
        address: json["address"],
        type: json["type"],
        cart: List<dynamic>.from(json["cart"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "token": token,
        "_id": id,
        "name": name,
        "email": email,
        "password": password,
        "address": address,
        "type": type,
        "cart": List<dynamic>.from(cart.map((x) => x)),
      };
}
