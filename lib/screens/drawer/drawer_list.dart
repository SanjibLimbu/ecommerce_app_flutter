import 'package:ecommerce_app/constants/color.dart';
import 'package:flutter/material.dart';

class ItemList extends StatelessWidget {
  final String title;
  final String screenName;
  final int fontSize;
  const ItemList({
    Key? key,
    required this.title,
    required this.screenName,
    required this.fontSize,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 10,
      ),
      child: TextButton(
          style: TextButton.styleFrom(
            minimumSize: Size.zero,
            padding: EdgeInsets.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          onPressed: () {
            Navigator.pushNamed(context, screenName);
          },
          child: Text(
            title,
            textAlign: TextAlign.left,
            style: const TextStyle(
                color: primaryColor,
                fontSize: 14,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
