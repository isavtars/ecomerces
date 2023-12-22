import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../utils/constance/app_colors.dart';

class SocialLoginBtn extends StatelessWidget {
  const SocialLoginBtn({super.key, required this.icons});

  final IconData icons;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: primarycolors,
      child: IconButton(
        onPressed: () {},
        icon: FaIcon(
          icons,
          color: textColor,
          size: 20,
        ),
      ),
    );
  }
}
