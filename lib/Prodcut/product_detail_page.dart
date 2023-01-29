import 'package:ecommerce_app/Prodcut/add_to_bag_btn.dart';
import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:ecommerce_app/widgets/social_btn.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ProductDetailPage extends StatelessWidget {
  ProductDetailPage({super.key});
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
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Macbook Pro',
                        style: textStyle.copyWith(
                          color: linkText,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        'macbook-pro',
                        style: textStyle.copyWith(color: primaryColor),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const Divider(
                        thickness: 1,
                        color: borderColor,
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Description of product hulalaa lilili lulu haha hehe',
                        style: textStyle.copyWith(color: primaryColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        '\$2500',
                        style: textStyle.copyWith(
                            fontSize: 24, color: primaryColor),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Quantity",
                        style: textStyle.copyWith(
                          color: primaryColor,
                        ),
                      ),
                      const SizedBox(
                        height: 3,
                      ),
                      const TextFieldCustom(
                        hintText: ' Product Quantity',
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      const AddToBag(),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(3),
                  color: Colors.grey.shade300,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rating',
                      style: textStyle.copyWith(
                        fontSize: 18.2,
                        fontWeight: FontWeight.w500,
                        color: primaryColor,
                      ),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: starColor,
                        ),
                        const Icon(
                          Icons.star_rounded,
                          size: 18,
                          color: starColor,
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        Text(
                          'based on 1 reviews.',
                          style: textStyle.copyWith(
                            color: primaryColor,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Divider(
                      thickness: 1,
                      color: bgColor,
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      primary: false,
                      itemCount: 5,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.only(
                            top: 10,
                          ),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  '1 star',
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: LinearProgressIndicator(
                                  minHeight: 16,
                                  value: 0.6,
                                  valueColor:
                                      const AlwaysStoppedAnimation<Color>(
                                    Color(0xffffb302),
                                  ),
                                  backgroundColor: Colors.grey.shade400,
                                ),
                              ),
                              const Expanded(
                                flex: 1,
                                child: Text(
                                  '100%',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                            ],
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
