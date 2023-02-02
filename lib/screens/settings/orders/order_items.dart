import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class OrderItems extends StatelessWidget {
  const OrderItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
                                child: Container(
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(4)),
                                  child: Image.asset(
                                    'assets/images/product1.jpeg',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Expanded(
                                flex: 5,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
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
                                            color: const Color(0xff758696),
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    ),
                                    Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
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
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: ((context) => AlertDialog(
                                      title: Text(
                                        'Cancel?',
                                        style: textStyle.copyWith(
                                            color: primaryColor,
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      content: Text(
                                        'Are you sure you want to cancel Macbook pro?',
                                        style: textStyle.copyWith(
                                          color: primaryColor,
                                        ),
                                      ),
                                      actions: [
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text('No'),
                                        ),
                                        const Expanded(
                                          child: SizedBox(),
                                        ),
                                        TextButton(
                                          onPressed: () {},
                                          child: const Text('Yes'),
                                        )
                                      ],
                                    )),
                              );
                            },
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
        ),
      ],
    );
  }
}
