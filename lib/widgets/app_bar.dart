import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/brand/brand.dart';
import 'package:ecommerce_app/screens/welcome/welcome.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required GlobalKey<ScaffoldState> scaffoldKey,
    required AnimationController brandController,
    required AnimationController welcomeController,
  })  : _scaffoldKey = scaffoldKey,
        _brandController = brandController,
        _welcomeController = welcomeController,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKey;
  final AnimationController _brandController;
  final AnimationController _welcomeController;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 0.5,
            color: Color(0xffbdcbd2),
          ),
        ),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
          horizontal: 16,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20,
            ),
            const Center(
              child: Text(
                "MERN Store",
                style: TextStyle(
                  color: primaryColor,
                  fontSize: 20,
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                  icon: const Icon(
                    Icons.menu_rounded,
                    size: 30,
                    color: Colors.black54,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.shopping_bag_outlined,
                    size: 30,
                    color: Colors.black,
                  ),
                )
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Brand(
                  brandController: _brandController,
                ),
                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Shop',
                    style: kNavBarTextStyle,
                  ),
                ),

                //2
                WelcomeWidget(
                  welcomeController: _welcomeController,
                ),
              ],
            ),
            const TextFieldCustom(hintText: 'Search Products',),
          ],
        ),
      ),
    );
  }
}