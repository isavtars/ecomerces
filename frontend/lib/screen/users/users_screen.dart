import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'package:frontend/controller/auth/auth_controller.dart';
import 'package:frontend/controller/global/controller.dart';
import 'package:frontend/controller/users/users_controller.dart';
import 'package:frontend/screen/users/account/account_screen.dart';
import 'package:frontend/screen/users/cart/cart_screen.dart';
import 'package:frontend/screen/users/home/users_home_screen.dart';
import 'package:frontend/screen/widgets/extension_responsive.dart';

import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class UsersScreen extends StatefulWidget {
  const UsersScreen({super.key});

  @override
  State<UsersScreen> createState() => _UsersScreenState();
}

class _UsersScreenState extends State<UsersScreen> {
  final pageController = PageController();

  int pageindex = 0;

  @override
  void initState() {
    Get.put(AuthController());
    Get.put(UsersController());
    userCtrl.getUsers();
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  onPageChanged(int index) {
    setState(() {
      pageindex = index;
    });
  }

  onTap(int page) {
    setState(() {
      pageController.jumpToPage(page);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
          onPageChanged: onPageChanged,
          physics: const BouncingScrollPhysics(),
          controller: pageController,
          children: const [
            UsersHomeScreen(),
            AcoountScreen(),
            CartScreen(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: pageindex,
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            items: [
              const BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.home), label: ""),
              const BottomNavigationBarItem(
                  icon: Icon(FontAwesomeIcons.user), label: ""),
              BottomNavigationBarItem(
                  icon: Badge(
                      largeSize: 0.05.w(context),
                      alignment: Alignment.topRight,
                      label: Text(
                        '100',
                        style: GoogleFonts.poppins(color: Colors.white),
                      ),
                      backgroundColor: Colors.green,
                      padding: EdgeInsets.all(0.002.toResponsive(context)),
                      child: const Icon(FontAwesomeIcons.cartShopping)),
                  label: ""),
            ]));
  }

  //helooo
}
