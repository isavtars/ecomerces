import 'package:flutter/material.dart';

import '../../utils/constance/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn(
      {super.key,
      required this.btnTitle,
      required this.onPressed,
      this.width = 300,
      this.height = 45});

  final String btnTitle;
  final VoidCallback onPressed;
  final double width, height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        decoration: const BoxDecoration(
            color: btnColors,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
            child: Text(
          btnTitle,
          style: secondText,
        )),
      ),
    );
  }
}

class CustomBtn2 extends StatelessWidget {
  const CustomBtn2(
      {super.key, required this.btnTitle, required this.onPressed});

  final String btnTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: 45,
        width: 150,
        decoration: const BoxDecoration(
            color: btnColors,
            borderRadius: BorderRadius.all(Radius.circular(20))),
        child: Center(
            child: Text(
          btnTitle,
          style: secondText,
        )),
      ),
    );
  }
}
