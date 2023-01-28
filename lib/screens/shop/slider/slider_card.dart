import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class ShowModalCardFilter extends StatelessWidget {
  final String cardTitle;
  final Widget slider;
  const ShowModalCardFilter({
    Key? key,
    required this.cardTitle,
    required this.slider,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      shape: RoundedRectangleBorder(
          side: const BorderSide(
            color: Color(0xffe7e7e7),
          ),
          borderRadius: BorderRadius.circular(6.0)),
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
            ),
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Color(0xfff7f7f7),
              border: Border(
                bottom: BorderSide(
                  width: 1,
                  color: Color(0xffe7e7e7),
                ),
              ),
            ),
            child: Text(
              cardTitle,
              style: textStyle.copyWith(
                fontSize: 16.51,
                color: textColor,
              ),
            ),
          ),
          slider,
        ],
      ),
    );
  }
}
