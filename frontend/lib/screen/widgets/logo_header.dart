import 'package:flutter/material.dart';
import 'package:frontend/app/assets/app_images.dart';
import 'package:frontend/app/constance/extensions/extension.dart';

Container logoheader(BuildContext context) {
  return Container(
    height: 0.08.h(context),
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: SizedBox(
              height: 1.0.w(context), child: Image.asset(AppImages.amazonlogo)),
        ),
        // Text(
        //   "Ecomerces",
        //   style:
        //       myTextStyle(logoColor, 0.03.toResponsive(context), "Rubikbubble"),
        // )
      ],
    ),
  );
}
