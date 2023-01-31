import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class AddToBag extends StatelessWidget {
  const AddToBag({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton.icon(
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
      onPressed: () {
        ;
      },
      icon: const Icon(
        Icons.shopping_bag_outlined,
        size: 20,
        color: Colors.black,
      ),
      label: Text(
        'Add To Bag',
        style: textStyle.copyWith(
          color: primaryColor,
          fontSize: 13,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}