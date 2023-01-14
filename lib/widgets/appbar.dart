import 'package:ecommerce_app/widgets/drawer.dart';
import 'package:ecommerce_app/widgets/drawer_list.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatefulWidget {
  const AppBarWidget({super.key});

  @override
  State<AppBarWidget> createState() => _AppBarWidgetState();
}

class _AppBarWidgetState extends State<AppBarWidget>
    with SingleTickerProviderStateMixin {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  late AnimationController _controller1;

  @override
  void initState() {
    _controller1 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 600),
    );

    super.initState();
  }

  @override
  void dispose() {
    _controller1.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: const DrawerWidget(),
      body: Stack(
        children: [
          Container(
            padding: const EdgeInsets.only(
              top: 20,
              left: 16,
              right: 16,
              bottom: 16,
            ),
            child: Column(
              children: [
                const Center(
                  child: Text(
                    "MERN Store",
                    style: TextStyle(
                      color: Color(
                        0xff323232,
                      ),
                      fontSize: 20,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                      icon: const Icon(
                        Icons.menu_rounded,
                        size: 30,
                        color: Colors.black54,
                      ),
                    ),
                    IconButton(
                      onPressed: () => _scaffoldKey.currentState?.openDrawer(),
                      icon: const Icon(
                        Icons.shopping_bag_outlined,
                        size: 30,
                        color: Colors.black,
                      ),
                    )
                  ],
                ),
                Row(
                  children: [
                    Container(
                      color: Colors.red,
                      child: PopupMenuButton(
                       
                        offset: const Offset(0, 25),
                        onSelected: (value) {
                          _controller1.forward(from: 0.0);
                        },
                        onCanceled: () {
                          print('onCanceled');
                          _controller1.reverse(from: 0.5);
                        },
                        child: Row(
                          children: [
                            const Text(
                              'Brand',
                              style: TextStyle(
                                  color: Color(0xff65676B),
                                  fontSize: 14,
                                  letterSpacing: .5,
                                  height: 1.5,
                                  fontWeight: FontWeight.w400),
                            ),
                            RotationTransition(
                              turns: Tween(begin: 0.0, end: 1.0)
                                  .animate(_controller1),
                              child: const Icon(Icons.expand_more),
                            )
                          ],
                        ),
                        itemBuilder: (context) => [
                          // popupmenu item 1
                          PopupMenuItem(
                            value: 1,
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                vertical: 16,
                                horizontal: 10,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Text(
                                        "SHOP BY BRAND",
                                        style: TextStyle(
                                            color: Color(0xff262626),
                                            fontSize: 18,
                                            fontWeight: FontWeight.w500),
                                      ),
                                      TextButton(
                                          onPressed: () {},
                                          style: TextButton.styleFrom(
                                            minimumSize: Size.zero,
                                            padding: EdgeInsets.zero,
                                            tapTargetSize: MaterialTapTargetSize
                                                .shrinkWrap,
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
                                  const DrawerList(
                                    title: 'Gucci',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                  const DrawerList(
                                    title: 'Calvin Klein',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                  const DrawerList(
                                    title: 'Polo',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                  const DrawerList(
                                    title: 'Tommy Hilfiger',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                  const DrawerList(
                                    title: 'Ralph Lauren',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                  const DrawerList(
                                    title: 'Apple',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                  const DrawerList(
                                    title: 'Converse',
                                    screenName: '',
                                    fontSize: 15,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
