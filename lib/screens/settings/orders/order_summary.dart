import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class OrderSummary extends StatelessWidget {
  const OrderSummary({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Order Summary',
              style: textStyle.copyWith(
                fontSize: 15,
                color: textColor,
                fontWeight: FontWeight.w500,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            const Divider(
              thickness: 2,
              color: bgColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Subtotal',
                    style: textStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$2500',
                    textAlign: TextAlign.end,
                    style: textStyle.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Est. Sales Tax',
                    style: textStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$0',
                    textAlign: TextAlign.end,
                    style: textStyle.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Shipping & Handling',
                    style: textStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$0',
                    textAlign: TextAlign.end,
                    style: textStyle.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Divider(
              thickness: 2,
              color: bgColor,
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 3,
                  child: Text(
                    'Total',
                    style: textStyle.copyWith(
                      color: primaryColor,
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Text(
                    '\$2500',
                    textAlign: TextAlign.end,
                    style: textStyle.copyWith(
                      color: primaryColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
