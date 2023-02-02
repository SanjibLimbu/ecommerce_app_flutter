import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/screens/settings/orders/order_card.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class OrderScreen extends StatelessWidget {
  OrderScreen({super.key});
  final GlobalKey<ScaffoldState> _scaffoldKeyCart = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: MimiAppBar(
          scaffoldKeyCart: _scaffoldKeyCart,
          titleAppbar: Center(
            child: Text(
              'Orders',
              style: textStyle.copyWith(
                color: textColor,
                fontSize: 16,
              ),
            ),
          ),
        ),
      ),
      key: _scaffoldKeyCart,
      endDrawer: const CartDrawer(),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 16,
              ),
              Text(
                'Your Orders',
                style: textStyle.copyWith(
                  fontSize: 15,
                  color: textColor,
                  fontWeight: FontWeight.w500,
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              const TextFieldCustom(
                hintText: 'Type The Complete Order ID',
                color: white,
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                "1 orders",
                style: textStyle.copyWith(
                  color: primaryColor,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: 5,
                  itemBuilder: (context, index) => const OrderCard(),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
