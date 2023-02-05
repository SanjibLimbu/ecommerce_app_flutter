import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/brand/brand.dart';
import 'package:ecommerce_app/screens/welcome/welcome.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:badges/badges.dart' as badges;
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
                "Ecommerce",
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
                GestureDetector(
                  onTap: () {
                    _scaffoldKey.currentState?.openEndDrawer();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: badges.Badge(
                      showBadge: true,
                      position: badges.BadgePosition.topEnd(top: -10, end: -10),
                      onTap: () =>
                          _scaffoldKey.currentState?.openEndDrawer(),
                      badgeContent: Padding(
                        padding: const EdgeInsets.all(1.0),
                        child: Text(
                          '1',
                          style: textStyle.copyWith(
                            fontSize: 12,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      badgeStyle: const badges.BadgeStyle(
                        badgeColor: Color.fromARGB(255, 15, 96, 237),
                      ),
                      child: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Brand(
                  brandController: _brandController,
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'shop_screen');
                  },
                  child: const Text(
                    'Shop',
                    style: textStyle,
                  ),
                ),

                //2
                WelcomeWidget(
                  welcomeController: _welcomeController,
                ),
              ],
            ),
            const TextFieldCustom(
              hintText: 'Search Products',
            ),
          ],
        ),
      ),
    );
  }
}
