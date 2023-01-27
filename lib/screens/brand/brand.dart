import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/brand/brand_list.dart';
import 'package:flutter/material.dart';

class Brand extends StatelessWidget {
  const Brand({
    Key? key,
    required AnimationController brandController,
  })  : _controller1 = brandController,
        super(key: key);

  final AnimationController _controller1;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
      offset: const Offset(0, 25),
      onSelected: (value) {
        _controller1.forward(from: 0.0);
      },
      onCanceled: () {
        _controller1.reverse(from: 0.5);
      },
      child: Row(
        children: [
          const Text(
            'Brand',
            style: textStyle,
          ),
          RotationTransition(
            turns: Tween(
              begin: 0.0,
              end: 1.0,
            ).animate(_controller1),
            child: const Icon(
              Icons.expand_more,
              color: secondaryColor,
            ),
          )
        ],
      ),
      itemBuilder: (context) {
        _controller1.forward();
        return [
          const PopupMenuItem(
            child: BrandPopUpWidget(),
          ),
        ];
      },
    );
  }
}
