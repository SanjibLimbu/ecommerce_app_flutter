import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/settings/setting_tab.dart';
import 'package:flutter/material.dart';

class OtherCard extends StatelessWidget {
  const OtherCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'OTHER',
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
                  color: const Color(0xffE0b0FF),
                  icon: 'assets/images/privacy-policy.png',
                  onPressed: () {},
                  tabTitle: 'Privacy Policy',
                ),
                const Divider(
                  color: bgColor,
                  thickness: 2,
                ),
                SettingTabWidget(
                  color: Colors.lime,
                  icon: 'assets/images/terms.png',
                  onPressed: () {},
                  tabTitle: 'Terms',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
