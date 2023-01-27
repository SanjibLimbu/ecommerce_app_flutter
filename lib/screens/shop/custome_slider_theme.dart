
import 'package:flutter/material.dart';

class CustomSliderTheme extends StatelessWidget {
  final Widget child;
  const CustomSliderTheme({super.key, required this.child});
 final  double thumbRadius = 6;
  final double tickMarkRadius = 4;
  final activeColor = const Color(0xff2962ff);
  final inactiveColor = Colors.grey;

  @override
  Widget build(BuildContext context) {
    return SliderTheme(
      data: SliderThemeData(
        trackHeight: 3,
        overlayShape: const RoundSliderOverlayShape(
          overlayRadius: 0,
        ),

        //inactive
        inactiveTickMarkColor: inactiveColor,
        inactiveTrackColor: inactiveColor,

        //active
        thumbColor: activeColor,
        activeTickMarkColor: activeColor,
        activeTrackColor: activeColor,
        //slider
        trackShape: const RectangularSliderTrackShape(),
        thumbShape: RoundSliderThumbShape(
          disabledThumbRadius: thumbRadius,
          enabledThumbRadius: thumbRadius,
        ),
        // slider tickmark
        tickMarkShape: RoundSliderTickMarkShape(
          tickMarkRadius: tickMarkRadius,
        ),

        //rangeSlider

        rangeTrackShape: const RectangularRangeSliderTrackShape(),

        //range thumb
        rangeThumbShape: RoundRangeSliderThumbShape(
          disabledThumbRadius: thumbRadius,
          enabledThumbRadius: thumbRadius,
        ),
        //rangetick
        rangeTickMarkShape: RoundRangeSliderTickMarkShape(
          tickMarkRadius: tickMarkRadius,
        ),
      ),
      child: child,
    );
  }
}