import 'package:ecommerce_app/Product/product_card.dart';
import 'package:ecommerce_app/constants/color.dart';
import 'package:ecommerce_app/screens/drawer/cart/cart_drawer.dart';

import 'package:ecommerce_app/screens/shop/showModal/filter_show_modal.dart';
import 'package:ecommerce_app/screens/shop/sort_and_filter_card.dart';
import 'package:ecommerce_app/screens/shop/showModal/sort_by_show_modal.dart';
import 'package:ecommerce_app/widgets/mimi_app_bar.dart';
import 'package:ecommerce_app/widgets/text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class ShopScreen extends StatefulWidget {
  const ShopScreen({super.key});

  @override
  State<ShopScreen> createState() => _ShopScreenState();
}

class _ShopScreenState extends State<ShopScreen> {
  final GlobalKey<ScaffoldState> _scaffoldKeyCart = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(70),
        child: MimiAppBar(
          scaffoldKeyCart: _scaffoldKeyCart,
          titleAppbar: TextFieldCustom(
            hintText: 'Search Products',
          ),
        ),
      ),
      backgroundColor: bgColor,
      key: _scaffoldKeyCart,
      endDrawer: const CartDrawer(),
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
                      crossAxisSpacing: 16,
                      itemCount: 10,
                      itemBuilder: (context, index) {
                        return const ProductCard();
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


