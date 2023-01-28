import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/shop/slider/range_slider.dart';
import 'package:ecommerce_app/screens/shop/slider/rating_slider.dart';
import 'package:ecommerce_app/screens/shop/slider/slider_card.dart';
import 'package:flutter/material.dart';

class FilterShowModal extends StatelessWidget {
  const FilterShowModal({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Filter',
          style: textStyle.copyWith(
            fontSize: 16.51,
            color: textColor,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        const ShowModalCardFilter(
          cardTitle: 'Price',
          slider: RangeSliderWidget(),
        ),
        const SizedBox(
          height: 20,
        ),
        const ShowModalCardFilter(
          cardTitle: 'Rating',
          slider: RatingSlider(),
        ),
      ],
    );
  }
}