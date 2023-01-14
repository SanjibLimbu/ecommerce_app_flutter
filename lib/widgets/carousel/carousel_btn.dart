import 'package:flutter/material.dart';

class CarouselBtn extends StatelessWidget {
  final Function action;
  final IconData iconData1;
  const CarouselBtn({
    Key? key,
    required this.action,
    required this.iconData1,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: const CircleBorder(),
        elevation: 0,
        backgroundColor: Colors.black.withOpacity(0.6),
      ),
      onPressed: () {
        action();
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 1,
          horizontal: 6,
        ),
        // ignore: unnecessary_const
        child: Icon(
          iconData1,
          size: 40,
          color: Colors.white,
        ),
      ),
    );
  }
}