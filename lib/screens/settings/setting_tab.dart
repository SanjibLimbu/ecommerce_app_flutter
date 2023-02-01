import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class SettingTabWidget extends StatelessWidget {
  final Color color;
  final String tabTitle;
  final void Function()?onPressed;
  final String icon;
  const SettingTabWidget({
    Key? key,
    required this.color,
    required this.tabTitle,
    required this.onPressed,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap:onPressed,
      child: ListTile(
        dense: true,
        minVerticalPadding: 0,
        // contentPadding: EdgeInsets.zero,
        visualDensity: const VisualDensity(
          vertical: -4,
        ),
        leading: Container(
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(3),
          ),
          child: Image.asset(
            icon,
            height: 20,
            width: 20,
            color: Colors.white,
            fit: BoxFit.fill,
          ),
        ),
        title: Text(
          tabTitle,
          style: textStyle.copyWith(
            fontWeight: FontWeight.w500,
            // color: textColor,
          ),
        ),
        trailing: const RotatedBox(
          quarterTurns: 3,
          child: Icon(Icons.expand_more),
        ),
      ),
    );
  }
}
