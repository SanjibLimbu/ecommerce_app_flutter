import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class ButtonSave extends StatelessWidget {
  const ButtonSave({
    Key? key,
    required this.btnTitle,
    this.color = bgColor,
  }) : super(key: key);

  final String btnTitle;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
      
        minimumSize: const Size(
          double.infinity,
          41.6,
        ),
        padding: const EdgeInsets.symmetric(
          vertical: 12,
          horizontal: 20,
        ),
      ),
      onPressed: () {},
      child: Text(
        btnTitle,
        style: textStyle.copyWith(
          color: white,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
