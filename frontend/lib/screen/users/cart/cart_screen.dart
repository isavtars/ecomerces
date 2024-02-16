import 'package:flutter/material.dart';
import 'package:frontend/screen/widgets/extension_responsive.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 0.033.w(context)),
          child: Column(
            children: [Text("CartScreen")],
          ),
        ),
      ),
    );
  }
}
