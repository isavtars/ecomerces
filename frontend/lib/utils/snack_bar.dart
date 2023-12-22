import 'package:flutter/material.dart';
import 'package:frontend/screen/widgets/extension_responsive.dart';
import 'package:frontend/utils/constance/app_colors.dart';

showSnackBar(BuildContext context, String text, bool sucessOk) {
  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      backgroundColor: sucessOk == true ? Colors.green : Colors.red,
      content: Text(
        text,
        style: myTextStyle(textColor, 0.015.toResponsive(context), "Roboto"),
      )));
}
