import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/constants/style.dart';
import 'package:ecommerce_app/screens/shop/showModal/filter_show_modal.dart';
import 'package:ecommerce_app/screens/shop/sort_and_filter_card.dart';
import 'package:ecommerce_app/screens/shop/showModal/sort_by_show_modal.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 5,
          ),
          child: AppBar(
            backgroundColor: Colors.white,
            elevation: 0,
            leading: IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
            ),
            title: const TextFieldCustom(
              hintText: 'Search Products',
            ),
            actions: [
              IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_bag_outlined,
                  size: 30,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: const Color(0xfff6f7f8),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                vertical: 10,
                horizontal: 16,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  SortAndFilterCard(
                    icon: 'assets/images/sort.png',
                    title: 'Sort by',
                    content: SortByShowModal(),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  SortAndFilterCard(
                    icon: 'assets/images/filter.png',
                    title: 'Filter',
                    content: FilterShowModal(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.white,
                child: Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    child: AlignedGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: 1000,
                      itemBuilder: (context, index) {
                        return Card(
                          color: const Color(0xfff6f7f8),
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
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
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
                                                  size: 14,
                                                  color: Color(0xffffb302))
                                            ],
                                          )
                                        ],
                                      )
                                    ]),
                              ),
                            ],
                          ),
                        );
                      },
                    )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
