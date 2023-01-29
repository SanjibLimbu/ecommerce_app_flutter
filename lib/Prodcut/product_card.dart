import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'product_detail_page');
      },
      child: Stack(
        children: [
          Card(
            color: bgColor,
            child: Column(
              children: [
                Image.asset(
                  'assets/images/product1.jpeg',
                  fit: BoxFit.cover,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Test product',
                        style: textStyle.copyWith(
                          fontSize: 12,
                          color: linkText,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        'By Polo',
                        style: textStyle.copyWith(
                          fontSize: 12,
                          color: const Color(0xff808081),
                        ),
                      ),
                      Text(
                        'TEST Product Description gggg TEST Product Description gggg',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                        style: textStyle.copyWith(
                          fontSize: 11,
                          color: textColor,
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            '\$20',
                            style: textStyle.copyWith(
                                fontSize: 14, color: textColor),
                          ),
                          Row(
                            children: [
                              Text(
                                '4.3',
                                style: textStyle.copyWith(
                                  color: textColor,
                                  fontSize: 14,
                                ),
                              ),
                              const Icon(Icons.star_rounded,
                                  size: 14, color: starColor)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
              top: 10,
              right: 10,
              child: Icon(
                Icons.favorite,
                color: Colors.grey,
                size: 20,
              )),
        ],
      ),
    );
  }
}
