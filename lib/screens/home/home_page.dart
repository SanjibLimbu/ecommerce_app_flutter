import 'package:ecommerce_app/constants/imges.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';


import 'package:ecommerce_app/screens/drawer/menu/drawer.dart';

import 'package:ecommerce_app/widgets/app_bar.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_app/screens/home/carousel/carousel_btn.dart';
import 'package:ecommerce_app/screens/home/carousel/indicator_dot.dart';

import 'package:flutter/material.dart';


class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen>
    with TickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late AnimationController _brandController;
  late AnimationController _welcomeController;
  final CarouselController _carouselController = CarouselController();

  int activeIndex = 0;

  AnimationController animationControl() {
    return AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
      upperBound: 0.5,
    );
  }

  @override
  void initState() {
    _brandController = animationControl();
    _welcomeController = animationControl();

    super.initState();
  }

  @override
  void dispose() {
    _brandController.dispose();
    _welcomeController.dispose();
    super.dispose();
  }

  void backArrow() {
    _carouselController.previousPage();
  }

  void nextArrow() {
    _carouselController.nextPage();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      endDrawer: const CartDrawer(),
      body: Column(
        children: [
          AppBarWidget(
            scaffoldKey: _scaffoldKey,
            brandController: _brandController,
            welcomeController: _welcomeController,
          ),
          Flexible(
            child: MediaQuery.removePadding(
              removeTop: true,
              removeBottom: true,
              context: context,
              child: Padding(
                padding: const EdgeInsets.only(
                  // top: 30,
                  left: 16,
                  right: 16,
                ),
                child: ListView(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Stack(
                      alignment: Alignment.center,
                      children: [
                        CarouselSlider.builder(
                          carouselController: _carouselController,
                          options: CarouselOptions(
                            height: MediaQuery.of(context).size.height * 0.3,
                            enableInfiniteScroll: true,
                            viewportFraction: 1,
                            autoPlay: true,
                            onPageChanged: (index, reason) {
                              setState(
                                () {
                                  activeIndex = index;
                                },
                              );
                            },
                          ),
                          itemCount: 2,
                          itemBuilder: (context, index, realIndex) {
                            return Image.asset(
                              assetImages[index],
                              height: MediaQuery.of(context).size.height * 0.3,
                              width: double.infinity,
                              fit: BoxFit.fill,
                            );
                          },
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CarouselBtn(
                              action: backArrow,
                              iconData1: Icons.navigate_before_rounded,
                            ),
                            CarouselBtn(
                              action: nextArrow,
                              iconData1: Icons.navigate_next_rounded,
                            )
                          ],
                        ),
                        IndicatorDot(
                          activeIndex: activeIndex,
                          assetImages: assetImages,
                          carouselController: _carouselController,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      'assets/images/home_image1.jpg',
                      height: MediaQuery.of(context).size.height * 0.32,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Image.asset(
                      'assets/images/banner6.jpg',
                      height: MediaQuery.of(context).size.height * 0.2,
                      fit: BoxFit.fill,
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
