import 'package:ecommerce_app/Product/add_to_bag_btn.dart';
import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

