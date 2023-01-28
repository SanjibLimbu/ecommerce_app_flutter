import 'package:ecommerce_app/screens/shop/slider/custome_slider_theme.dart';
import 'package:ecommerce_app/utils/util_slider_rating.dart';

import 'package:flutter/material.dart';

class RatingSlider extends StatefulWidget {
  const RatingSlider({super.key});

  @override
  State<RatingSlider> createState() => _RatingSliderState();
}

class _RatingSliderState extends State<RatingSlider> {
  int indexTop = 0;
  @override
  Widget build(BuildContext context) {
    final sliderLabels = ['Any', 1, 2, 3, 4, 5];
    const double min = 0;
    final double max = sliderLabels.length - 1;
    final divisions = sliderLabels.length - 1;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        children: [
          CustomSliderTheme(
            child: Slider(
              value: indexTop.toDouble(),
              min: min,
              max: max,
              divisions: divisions,
              onChanged: (value) => setState(
                () => indexTop = value.toInt(),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: Utils.modelBuilder(
                    sliderLabels,
                    (index, label) {
                      const selectedColor = Colors.black;
                      final unselectedColor = Colors.black.withOpacity(0.3);
                      final isSelected = index <= indexTop;
                      final color = isSelected ? selectedColor : unselectedColor;

                      return buildLabel(
                          label: label.toString(),
                          color: color,
                          index: index,
                          isSelected: isSelected);
                    },
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Widget buildLabel({
  required String label,
  required Color color,
  required int index,
  required bool isSelected,
}) =>
    SizedBox(
      child: Row(
        children: [
          Text(
            label,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ).copyWith(color: color),
          ),
          if (index > 0)
            Icon(
              Icons.star_rounded,
              size: 18,
              color: isSelected ? const Color(0xffffb302) : Colors.grey,
            )
        ],
      ),
    );
