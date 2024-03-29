import 'package:flutter/material.dart';
import 'package:frontend/app/manager/assets/app_images.dart';

import 'package:frontend/app/manager/constance/extensions/extension.dart';

Container logoheader(BuildContext context) {
  return Container(
    height: 0.08.h(context),
    padding: const EdgeInsets.all(10),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child:
              SizedBox(height: 1.0.w(context), child: Image.asset(amazonlogo)),
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
