import 'package:ecommerce_app/screens/Product/add_review.dart';
import 'package:ecommerce_app/screens/Product/product_des.dart';
import 'package:ecommerce_app/screens/Product/rating_widget.dart';
import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';

import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class ProductDetailPage extends StatefulWidget {
  const ProductDetailPage({super.key});

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  final GlobalKey<ScaffoldState> _scaffoldKeyCart = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: MimiAppBar(
          scaffoldKeyCart: _scaffoldKeyCart,
          titleAppbar: Center(
            child: Text(
              'Product',
              style: textStyle.copyWith(color: textColor, fontSize: 16),
            ),
          ),
        ),
      ),
      backgroundColor: bgColor,
      key: _scaffoldKeyCart,
      endDrawer: const CartDrawer(),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Image.asset(
                  'assets/images/product1.jpeg',
                  // height: MediaQuery.of(context).size.height * 0.32,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: 0,
                  right: 0,
                  child: Container(
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(3),
                          bottomRight: Radius.circular(3),
                        )),
                    padding: const EdgeInsets.all(
                      10,
                    ),
                    child: Text(
                      'In stock',
                      style: textStyle.copyWith(color: linkText),
                    ),
                  ),
                ),
              ],
            ),
            const ProductDescription(),
            const CustomRatingWidget(),
            const AddReviewWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 16,
              ),
              child: Card(
                margin: const EdgeInsets.all(0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                  ),
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 20,
                      child: Text('S'),
                    ),
                    trailing: RatingBarIndicator(
                      direction: Axis.horizontal,
                      rating: 4,
                      itemCount: 5,
                      itemSize: 18,
                      itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star_rounded,
                        color: starColor,
                      ),
                    ),
                    title: Text(
                      'The Apple Macbook',
                      style:
                          textStyle.copyWith(fontSize: 15.34, color: textColor),
                    ),
                    subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Tuesday, Aug 30, 2022",
                            style: textStyle.copyWith(
                              color: primaryColor,
                              fontSize: 12,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            'good product',
                            style: textStyle.copyWith(
                              color: primaryColor,
                            ),
                          )
                        ]),
                  ),
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
