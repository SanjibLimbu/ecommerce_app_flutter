import 'package:ecommerce_app/constants/color.dart';

import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/screens/settings/btn.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ChangePassword extends StatelessWidget {
  ChangePassword({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKeyCart = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: MimiAppBar(
          scaffoldKeyCart: _scaffoldKeyCart,
          titleAppbar: Center(
            child: Text(
              'Change Password',
              style: textStyle.copyWith(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      key: _scaffoldKeyCart,
      endDrawer: const CartDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Account Security',
                  style: textStyle.copyWith(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "Password",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  hintText: 'Old Password',
                   color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "New Password",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  hintText: 'New Password',
                   color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  height: 50,
                ),
                const ButtonSave(
                  btnTitle: 'Change Password',
                  color: Colors.green,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}


