import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/screens/drawer/menu/drawer_list.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatelessWidget {
  const DrawerWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            // const SizedBox(
            //   height: 20,
            // ),
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
            const Padding(
              padding: EdgeInsets.only(
                top: 20,
                left: 35,
                right: 35,
              ),
              child: Text(
                "Shop By Category",
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Expanded(
              child: ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 35,
                      vertical: 5,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        ItemList(
                          title: "Shoes",
                          screenName: "screen",
                          fontSize: 14,
                        ),
                        ItemList(
                          title: "Bags",
                          screenName: "screen",
                          fontSize: 14,
                        ),
                        ItemList(
                          title: "Perfumes",
                          screenName: "screen",
                          fontSize: 14,
                        ),
                        ItemList(
                          title: "Mens",
                          screenName: "screen",
                          fontSize: 14,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
