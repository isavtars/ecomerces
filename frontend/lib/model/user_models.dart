class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;
  final String address;
  final List cart;
  final String type;

  UserModel(this.id, this.address, this.cart, this.type,
      {required this.name, required this.email, required this.password});

  Map<String, dynamic> tojson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "address": address,
        "cart": cart,
        "type": type
      };
}
