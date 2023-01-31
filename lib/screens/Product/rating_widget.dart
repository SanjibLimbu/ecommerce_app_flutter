import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class CustomRatingWidget extends StatelessWidget {
  const CustomRatingWidget({
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
                RatingBarIndicator(
                  
                
                
                 
                  direction: Axis.horizontal,
                  rating: 4.6,
                 
                  itemCount: 5,
                  itemSize: 25,
                  itemPadding: const EdgeInsets.symmetric(horizontal: 0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star_rounded,
                    color: starColor,
                  ),
                 
                ),
                const SizedBox(
                  width: 4,
                ),
                Text(
                  'based on 13 reviews.',
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
                          valueColor: const AlwaysStoppedAnimation<Color>(
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
