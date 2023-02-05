import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:badges/badges.dart' as badges;

class MimiAppBar extends StatelessWidget {
  const MimiAppBar({
    Key? key,
    required this.titleAppbar,
    required GlobalKey<ScaffoldState> scaffoldKeyCart,
  })  : scaffoldKeyCart = scaffoldKeyCart,
        super(key: key);

  final GlobalKey<ScaffoldState> scaffoldKeyCart;
  final titleAppbar;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 5,
      ),
      child: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: titleAppbar,
        actions: [
          GestureDetector(
            onTap: () {
              scaffoldKeyCart.currentState?.openEndDrawer();
            },
            child: Padding(
              padding: const EdgeInsets.only(right: 10),
              child: badges.Badge(
                showBadge: true,
                position: badges.BadgePosition.topEnd(top: -10, end: -10),
                onTap: () => scaffoldKeyCart.currentState?.openEndDrawer(),
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
    );
  }
}
