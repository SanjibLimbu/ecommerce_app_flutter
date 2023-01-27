import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/shop/custome_slider_theme.dart';
import 'package:ecommerce_app/screens/shop/range_slider.dart';
import 'package:ecommerce_app/screens/shop/rating_slider.dart';
import 'package:ecommerce_app/utils/util_slider_rating.dart';
import 'package:flutter/material.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff6f7f8),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CardFilter(
                cardTitle: 'Price',
                slider: RangeSliderWidget(),
              ),
              const SizedBox(
                height: 50,
              ),
              CardFilter(
                cardTitle: 'Rating',
                slider: RatingSlider(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CardFilter extends StatelessWidget {
  final String cardTitle;
  final Widget slider;
  const CardFilter({
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
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 12,
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
