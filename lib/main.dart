import 'package:ecommerce_app/screens/login/login_screen.dart';
import 'package:ecommerce_app/screens/shop.dart';
import 'package:ecommerce_app/screens/home_page.dart';

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
      initialRoute: 'welcome_screen',
      routes: {
        'welcome_screen': (context) => const WelcomeScreen(),
        'shop_screen': (context) => const ShopScreen(),
        'login_screen': (context) => const LoginScreen(),
      },
    );
  }
}
