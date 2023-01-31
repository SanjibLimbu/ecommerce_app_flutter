import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/settings/setting_tab.dart';
import 'package:flutter/material.dart';

class CustomerServiceCard extends StatelessWidget {
  const CustomerServiceCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'CUSTOMER SERVICE',
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
                  color: Colors.teal,
                  icon: 'assets/images/customer-service.png',
                  onPressed: () {},
                  tabTitle: 'Contact Us',
                ),
                const Divider(
                    color: bgColor,
                  thickness: 2,
                ),
                SettingTabWidget(
                  color: const Color(0xff000080),
                  icon: 'assets/images/merchant.png',
                  onPressed: () {},
                  tabTitle: 'Sell With Us',
                ),
                const Divider(
                   color: bgColor,
                  thickness: 2,
                ),
                SettingTabWidget(
                  color: Colors.blueGrey,
                  icon: 'assets/images/free-shipping.png',
                  onPressed: () {},
                  tabTitle: 'Shipping',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
