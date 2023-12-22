class UserModel {
  final String id;
  final String name;
  final String email;
  final String password;
  final String address;
  final List cart;
  final String type;

  UserModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.password,
      required this.address,
      required this.cart,
      required this.type});

  Map<String, dynamic> tojson() => {
        "id": id,
        "name": name,
        "email": email,
        "password": password,
        "address": address,
        "cart": cart,
        "type": type
      };

  factory UserModel.fromJson(Map<String, dynamic> json) {
    List cart = json['cart'] is List ? json['cart'] : [];
    return UserModel(
        id: json['id'],
        name: json['name'],
        email: json['email'],
        password: json['password'],
        address: json['address'],
        cart: json['cart'] ?? [],
        type: json['type']);
  }
}
