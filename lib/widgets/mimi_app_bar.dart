import 'package:flutter/material.dart';

class MimiAppBar extends StatelessWidget {
  const MimiAppBar({
    Key? key,
    required this.titleAppbar,
    required GlobalKey<ScaffoldState> scaffoldKeyCart,
  })  : _scaffoldKeyCart = scaffoldKeyCart,
        super(key: key);

  final GlobalKey<ScaffoldState> _scaffoldKeyCart;
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
          IconButton(
            onPressed: () => _scaffoldKeyCart.currentState?.openEndDrawer(),
            icon: const Icon(
              Icons.shopping_bag_outlined,
              size: 30,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}