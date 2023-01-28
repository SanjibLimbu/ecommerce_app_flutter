import 'package:ecommerce_app/screens/shop/slider/custome_slider_theme.dart';
import 'package:flutter/material.dart';

class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({super.key});

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues value = const RangeValues(0, 5000);
  @override
  Widget build(BuildContext context) {
    RangeLabels labels = RangeLabels(
      '\$${value.start.round().toString()}',
      '\$${value.end.round().toString()}',
    );
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomSliderTheme(
            child: RangeSlider(
              values: value,
              labels: labels,
              divisions: 5000,
              onChanged: (RangeValues newRange) {
                setState(
                  (() => value = newRange),
                );
              },
              min: 0,
              max: 5000,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                '\$1',
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
              Text(
                '\$5000',
              
                style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
