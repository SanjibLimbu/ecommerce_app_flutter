import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class CartNotEmpty extends StatelessWidget {
  const CartNotEmpty({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Flexible(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
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
                              flex: 3,
                              child: Text(
                                'Macbook Pro',
                                style: textStyle.copyWith(
                                  color: linkText,
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: IconButton(
                                    onPressed: () {},
                                    padding: const EdgeInsets.all(0),
                                    alignment: Alignment.centerRight,
                                    icon: const Icon(
                                      Icons.delete_rounded,
                                      color: Colors.red,
                                    )),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ProductDetailRow(
                          keyProduct: 'Price',
                          value: '\$2500',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const ProductDetailRow(
                          keyProduct: 'Quantity',
                          value: '1',
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        index == 1 - 1
                            ? const SizedBox()
                            : const Divider(
                                thickness: 1,
                                color: bgColor,
                              ),
                      ],
                    ),
                  );
                })),
          ),
          Container(
            color: bgColor,
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: const [
                  ProductDetailRow(
                    keyProduct: 'Shipping Fee',
                    value: '\$0',
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ProductDetailRow(
                    keyProduct: 'Total',
                    value: '\$2660',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Btn(
            title: 'Continue Shopping',
            action: () {},
          ),
          Btn(
            title: 'Place Order',
            action: () {},
          ),
          const SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

class Btn extends StatelessWidget {
  const Btn({
    Key? key,
    required this.action,
    required this.title,
  }) : super(key: key);
  final String title;
  final Function action;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: OutlinedButton(
        onPressed: () {
          action;
        },
        style: OutlinedButton.styleFrom(
          minimumSize: const Size(
            double.infinity,
            41.1,
          ),
          padding: const EdgeInsets.symmetric(
            vertical: 6,
            horizontal: 10,
          ),
        ),
        child: Text(
          title,
          style: textStyle.copyWith(
            color: primaryColor,
            fontSize: 12,
            fontWeight: FontWeight.w500,
            letterSpacing: .9,
            height: 0,
          ),
        ),
      ),
    );
  }
}

class ProductDetailRow extends StatelessWidget {
  const ProductDetailRow({
    required this.keyProduct,
    required this.value,
    Key? key,
  }) : super(key: key);
  final String keyProduct;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 3,
          child: Text(
            keyProduct,
            style: textStyle.copyWith(
              color: primaryColor,
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Text(
            value,
            textAlign: TextAlign.end,
            style: textStyle.copyWith(
              color: primaryColor,
              fontWeight: FontWeight.w500,
            ),
          ),
        )
      ],
    );
  }
}
