import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  final String title;
  final String screenName;
  final int fontSize;
  const DrawerList({
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
                color: Color(0xff323232),
                fontSize: 14,
                fontWeight: FontWeight.w400),
          )),
    );
  }
}
