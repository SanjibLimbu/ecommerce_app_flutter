import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class ButtonSave extends StatelessWidget {
  const ButtonSave({
    Key? key,
    required this.btnTitle
  }) : super(key: key);

  final String btnTitle;

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
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
          color: primaryColor,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
