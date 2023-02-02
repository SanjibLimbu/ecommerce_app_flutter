import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class SocialBtn extends StatelessWidget {
  final String icon;
  final String title;
  final Function action;
  final Color color;

  const SocialBtn({
    Key? key,
    required this.action,
    required this.icon,
    required this.title,
    this.color=bgColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
      style: OutlinedButton.styleFrom(
        backgroundColor: color,
        minimumSize: const Size(
          double.infinity,
          55.6,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
      ),
      onPressed: () {
        action();
      },
      icon: Image.asset(
        icon,
        height: 30,
        width: 30,
        fit: BoxFit.fill,
      ),
      label: Text(
        title,
        style: textStyle.copyWith(
          color: primaryColor,
        ),
      ),
    );
  }
}
