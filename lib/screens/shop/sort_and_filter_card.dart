import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class SortAndFilterCard extends StatelessWidget {
  final String title;
  final String icon;
  final Widget content;
  const SortAndFilterCard(
      {Key? key,
      required this.title,
      required this.icon,
      required this.content})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ElevatedButton.icon(
        style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: Colors.white,
          minimumSize: const Size(100, 44),
          side: const BorderSide(
            color: borderColor,
          ),
        ),
        onPressed: (() {
          showModalBottomSheet(
            isScrollControlled: true,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
              topLeft: Radius.circular(
                10,
              ),
              topRight: Radius.circular(
                10,
              ),
            )),
            context: context,
            builder: (context) => SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 20,
                ),
                child: content,
              ),
            ),
          );
        }),
        icon: Image.asset(
          icon,
          color: Colors.grey,
          height: 20,
          width: 20,
          fit: BoxFit.fill,
        ),
        label: Text(
          title,
          style: textStyle.copyWith(
            fontSize: 14,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
