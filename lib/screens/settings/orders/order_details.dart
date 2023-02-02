import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';
import 'package:ecommerce_app/screens/settings/btn.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:flutter/material.dart';

class OrderDetails extends StatelessWidget {
  OrderDetails({super.key});
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
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Order Details',
                  style: textStyle.copyWith(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Order ID',
                                  style: textStyle.copyWith(
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  '63c51e98f231b8003444676d',
                                  style: textStyle.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Expanded(
                                flex: 2,
                                child: Text(
                                  'Order Date',
                                  style: textStyle.copyWith(
                                    color: primaryColor,
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Text(
                                  'Monday, Jan 16, 2023',
                                  style: textStyle.copyWith(
                                    color: primaryColor,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 5,
                          ),
                          OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(
                                double.infinity,
                                33.1,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 10,
                              ),
                            ),
                            child: Text(
                              'Cancel order',
                              style: textStyle.copyWith(
                                color: primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .9,
                                height: 0,
                              ),
                            ),
                          ),
                        ]),
                  ),
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Order Items',
                  style: textStyle.copyWith(
                    fontSize: 15,
                    color: textColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  height: 5,
                ),
                Card(
                  elevation: 0,
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            primary: false,
                            itemCount: 2,
                            itemBuilder: ((context, index) {
                              return Column(
                                children: [
                                  Row(
                                    children: [
                                      Expanded(
                                        flex: 2,
                                        child: Image.asset(
                                          'assets/images/product1.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                      Expanded(
                                        flex: 4,
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Text(
                                              'Macbook Pro',
                                              style: textStyle.copyWith(
                                                color: linkText,
                                                fontSize: 16,
                                                fontWeight: FontWeight.w500,
                                              ),
                                            ),
                                            Text(
                                              '\$2500',
                                              style: textStyle.copyWith(
                                                color: primaryColor,
                                              ),
                                            ),
                                            Row(
                                              children: [
                                                Text(
                                                  'Status',
                                                  style: textStyle.copyWith(
                                                    color: primaryColor,
                                                  ),
                                                ),
                                                const SizedBox(
                                                  width: 5,
                                                ),
                                                Text(
                                                  'Not processed',
                                                  style: textStyle.copyWith(
                                                    color:
                                                        const Color(0xff758696),
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                )
                                              ],
                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Flexible(
                                                  flex: 3,
                                                  child: Text(
                                                    'Quantity 1',
                                                    style: textStyle.copyWith(
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                ),
                                               
                                                Flexible(
                                                  flex: 5,
                                                  child: Text(
                                                    'Total Price \$2500',
                                                    style: textStyle.copyWith(
                                                      color: primaryColor,
                                                    ),
                                                  ),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                   OutlinedButton(
                            onPressed: () {},
                            style: OutlinedButton.styleFrom(
                              minimumSize: const Size(
                                double.infinity,
                                33.1,
                              ),
                              padding: const EdgeInsets.symmetric(
                                vertical: 6,
                                horizontal: 10,
                              ),
                            ),
                            child: Text(
                              'Cancel',
                              style: textStyle.copyWith(
                                color: primaryColor,
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                letterSpacing: .9,
                                height: 0,
                              ),
                            ),
                          ),
                                ],
                              );
                            }))
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
