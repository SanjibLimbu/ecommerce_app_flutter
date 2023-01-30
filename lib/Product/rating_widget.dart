import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';

class RatingWidget extends StatelessWidget {
  const RatingWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
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
    );
  }
}

