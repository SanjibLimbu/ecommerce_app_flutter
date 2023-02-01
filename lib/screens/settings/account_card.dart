import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/settings/setting_tab.dart';
import 'package:flutter/material.dart';

class AccountCard extends StatelessWidget {
  const AccountCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'ACCOUNT',
          style: textStyle.copyWith(
            color: Colors.grey,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 4,
        ),
        Card(
          elevation: 0,
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 9,
            ),
            child: Column(
              children: [
                SettingTabWidget(
                  color: Colors.greenAccent,
                  icon: 'assets/images/user.png',
                  onPressed: () {
                    Navigator.pushNamed(context, 'account_screen');
                  },
                  tabTitle: 'Account',
                ),
                const Divider(
                  color: bgColor,
                  thickness: 2,
                ),
                SettingTabWidget(
                  color: Colors.blueAccent,
                  icon: 'assets/images/padlock.png',
                  onPressed: () {
                    Navigator.pushNamed(context, 'change_password');
                  },
                  tabTitle: 'Change Password',
                ),
                const Divider(
                  color: bgColor,
                  thickness: 2,
                ),
                SettingTabWidget(
                  color: Colors.cyan,
                  icon: 'assets/images/maps-and-flags.png',
                  onPressed: () {
                    Navigator.pushNamed(context, 'address');
                  },
                  tabTitle: 'Address',
                ),
                const Divider(
                  color: bgColor,
                  thickness: 2,
                ),
                SettingTabWidget(
                  color: Colors.pinkAccent,
                  icon: 'assets/images/order.png',
                  onPressed: () {
                     Navigator.pushNamed(context, 'order_screen');
                  },
                  tabTitle: 'Orders',
                ),
                const Divider(
                  color: bgColor,
                  thickness: 2,
                  // endIndent: 25,
                  // indent: 15,
                ),
                SettingTabWidget(
                  color: Colors.orangeAccent,
                  icon: 'assets/images/wishlist.png',
                  onPressed: () {},
                  tabTitle: 'Wishlist',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
