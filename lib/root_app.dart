import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mymtn/pages/buy.dart';
import 'package:mymtn/pages/getmore.dart';
import 'package:mymtn/pages/home.dart';
import 'package:mymtn/pages/just4u.dart';
import 'package:mymtn/widgets/navigation_drawer.dart';
import 'package:salomon_bottom_bar/salomon_bottom_bar.dart';

class RootApp extends StatefulWidget {
  const RootApp({Key? key}) : super(key: key);

  @override
  State<RootApp> createState() => _RootAppState();
}

const List pageTitle = [
  "Home",
  "Buy/Send",
  "Just4U",
  "Get More",
];

class _RootAppState extends State<RootApp> {
  int currentIndex = 0;
  List<Widget> pages = [
    const HomePage(),
    const BuyPage(),
    const Just4U(),
    const GetMore()
  ];
  final PageController _pageController = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            SvgPicture.asset(
              'assets/mtn-logo.svg',
              width: 45,
            ),
            const Spacer(),
            Text(
              pageTitle[currentIndex],
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
      endDrawer: NavigationDrawer(),
      bottomNavigationBar: SalomonBottomBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
            _pageController.animateToPage(
              currentIndex,
              duration: const Duration(milliseconds: 200),
              curve: Curves.ease,
            );
          });
        },
        selectedItemColor: Theme.of(context).primaryColor,
        items: [
          SalomonBottomBarItem(
            icon: const Icon(Icons.home_outlined),
            title: const Text("Home"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.monetization_on_outlined),
            title: const Text("Buy/Send"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.shopping_bag_outlined),
            title: const Text("Just4U"),
          ),
          SalomonBottomBarItem(
            icon: const Icon(Icons.more_outlined),
            title: const Text("Get More"),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: pages,
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}
