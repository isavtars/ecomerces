import 'package:flutter/material.dart';
import 'package:frontend/app/manager/constance/extensions/extension.dart';

import '../../app/styles/app_colors.dart';

class CustomBtn extends StatelessWidget {
  const CustomBtn({
    super.key,
    required this.btnTitle,
    required this.onPressed,
  });

  final String btnTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        width: 1.0.h(context),
        height: 0.07.h(context),
        decoration: BoxDecoration(
            color: btnColors,
            borderRadius:
                BorderRadius.all(Radius.circular(0.007.toResponsive(context)))),
        child: Center(
            child: Text(
          btnTitle,
          style: secondText,
        )),
      ),
    );
  }
}
