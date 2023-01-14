import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    Key? key,
    required this.activeIndex,
    required this.assetImages,
    required CarouselController carouselController,
  })  : _carouselController = carouselController,
        super(key: key);

  final int activeIndex;
  final List<String> assetImages;
  final CarouselController _carouselController;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: 10,
      child: AnimatedSmoothIndicator(
        activeIndex: activeIndex,
        count: assetImages.length,
        effect: const WormEffect(
          spacing: 12.0,
          dotHeight: 12,
          dotWidth: 12,
          paintStyle: PaintingStyle.stroke,
          strokeWidth: 1.5,
          dotColor: Colors.white,
          activeDotColor: Colors.white,
        ),
        onDotClicked: (index) => _carouselController.animateToPage(
          index,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeIn,
        ),
      ),
    );
  }
}