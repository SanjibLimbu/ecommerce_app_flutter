import 'package:ecommerce_app/constants/color.dart';

import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/screens/settings/btn.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  AccountScreen({super.key});
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
              'Account',
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
                  'Account Details',
                  style: textStyle.copyWith(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "SL.sanehang@gmail.com",
                      style: textStyle.copyWith(
                        color: primaryColor,
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        "Member",
                        style: textStyle.copyWith(
                          color: primaryColor,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  "First Name",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: 'Sanjib',
                  color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Last Name",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: 'Limbu',
                  color: white,
                ),
                const SizedBox(
                  height: 15,
                ),
                Text(
                  "Phone Number",
                  style: textStyle.copyWith(
                    color: primaryColor,
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const TextFieldCustom(
                  initialValue: '',
                  hintText: 'Please Enter Your Phone Number',
                  color: white,
                ),
                const SizedBox(
                  height: 50,
                ),
                const ButtonSave(
                  btnTitle: 'Save Changes',
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
