import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/screens/drawer/drawer_list.dart';
import 'package:flutter/material.dart';

class BrandPopUpWidget extends StatelessWidget {
  const BrandPopUpWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        vertical: 16,
        horizontal: 10,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "SHOP BY BRAND",
                style: TextStyle(
                    color: textColor,
                    fontSize: 18,
                    fontWeight: FontWeight.w500),
              ),
              TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    minimumSize: Size.zero,
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  child: const Text(
                    "See All",
                    style: TextStyle(
                      color: Color(0xff2962ff),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ))
            ],
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            thickness: 1,
          ),
          const ItemList(
            title: 'Gucci',
            screenName: '',
            fontSize: 15,
          ),
          const ItemList(
            title: 'Calvin Klein',
            screenName: '',
            fontSize: 15,
          ),
          const ItemList(
            title: 'Polo',
            screenName: '',
            fontSize: 15,
          ),
          const ItemList(
            title: 'Tommy Hilfiger',
            screenName: '',
            fontSize: 15,
          ),
          const ItemList(
            title: 'Ralph Lauren',
            screenName: '',
            fontSize: 15,
          ),
          const ItemList(
            title: 'Apple',
            screenName: '',
            fontSize: 15,
          ),
          const ItemList(
            title: 'Converse',
            screenName: '',
            fontSize: 15,
          ),
        ],
      ),
    );
  }
}
