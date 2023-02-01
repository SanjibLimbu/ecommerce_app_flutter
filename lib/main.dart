import 'package:ecommerce_app/screens/Product/product_detail_page.dart';
import 'package:ecommerce_app/screens/SignUp/signup_screen.dart';
import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:ecommerce_app/screens/settings/Account/account_page.dart';
import 'package:ecommerce_app/screens/settings/Address/address.dart';
import 'package:ecommerce_app/screens/settings/Change%20Password/change_password.dart';
import 'package:ecommerce_app/screens/shop/shop.dart';
import 'package:ecommerce_app/screens/home/home_page.dart';
import 'package:ecommerce_app/screens/settings/setting_page.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(
    const EcommerceApp(),
  );
}

class EcommerceApp extends StatelessWidget {
  const EcommerceApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: 'setting_screen',
      routes: {
        'welcome_screen': (context) => const WelcomeScreen(),
        'shop_screen': (context) => const ShopScreen(),
        'login_screen': (context) => const LoginScreen(),
        'signup_screen': (context) => const SignUpScreen(),
        'product_detail_page': (context) => const ProductDetailPage(),
        'setting_screen': (context) => SettingPage(),
        'account_screen': (context) =>  AccountScreen(),
        'change_password': (context) => ChangePassword(),
        'address':(context) => AddressWidget()
      },
    );
  }
}
