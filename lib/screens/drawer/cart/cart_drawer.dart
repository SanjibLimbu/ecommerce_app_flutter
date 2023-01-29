import 'package:flutter/material.dart';

class CartDrawer extends StatelessWidget {
  const CartDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        // padding: EdgeInsets.,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  icon: const Icon(
                    Icons.close,
                    size: 25,
                  ),
                  onPressed: () => Navigator.pop(context),
                ),
              ],
            ),
            const Divider(
              thickness: 1,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  Icon(
                    Icons.shopping_bag_outlined,
                    size: 50,
                    color: Colors.black,
                  ),
                  Text(
                    'Your shopping cart is empty',
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
