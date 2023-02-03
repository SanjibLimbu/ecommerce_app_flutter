
import 'package:ecommerce_app/screens/drawer/cart/cart_empty.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_not_empty.dart';
import 'package:flutter/material.dart';

class CartDrawer extends StatelessWidget {
  const CartDrawer({super.key});

  final bool isEMpty = false;
 

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      
      child: isEMpty
          ? const CartEmpty()
          : const CartNotEmpty(),
    );
  }
}



