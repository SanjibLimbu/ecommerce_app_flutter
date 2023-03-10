import 'package:ecommerce_app/screens/drawer/menu/drawer_list.dart';
import 'package:flutter/material.dart';

class WelcomeList extends StatelessWidget {
  const WelcomeList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 10,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ItemList(
              title: 'Setting',
              screenName: 'setting_screen',
              fontSize: 13,
            ),
            
            ItemList(
              title: 'Login',
              screenName: 'login_screen',
              fontSize: 13,
            ),
            ItemList(
              title: 'Sign Up',
              screenName: 'signup_screen',
              fontSize: 13,
            ),
          ],
        ),
      ),
    );
  }
}
