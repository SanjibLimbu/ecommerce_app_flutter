import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/screens/settings/account_card.dart';
import 'package:ecommerce_app/screens/settings/customer_service_card.dart';
import 'package:ecommerce_app/screens/settings/other_card.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  SettingPage({super.key});
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
              'Settings',
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
              children: const [
                SizedBox(
                  height: 16,
                ),
                AccountCard(),
                SizedBox(
                  height: 15,
                ),
                CustomerServiceCard(),
                SizedBox(
                  height: 15,
                ),
                OtherCard(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
