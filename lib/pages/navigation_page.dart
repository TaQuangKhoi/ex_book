import 'package:ex_book/library/ex_book_colors.dart';
import 'package:ex_book/pages/buy_book_page.dart';
import 'package:ex_book/pages/home_page.dart';
import 'package:ex_book/pages/personal_page.dart';
import 'package:ex_book/pages/transfer_book_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/ex_book_search_bar.dart';

class NavigationPage extends StatefulWidget {
  const NavigationPage({super.key});

  @override
  State<NavigationPage> createState() => _NavigationPageState();
}

class _NavigationPageState extends State<NavigationPage> {
  int currentPageIndex = 3;

  @override
  Widget build(BuildContext context) {
    const String assetPath = 'assets/navigation_page/';

    return Scaffold(
      bottomNavigationBar: NavigationBar(
        indicatorColor: Colors.transparent,
        backgroundColor: Color(ExBookColor.mauChinh3.colorHex),
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: [
          NavigationDestination(
            selectedIcon: SvgPicture.asset('${assetPath}selected-home-icon.svg',
                semanticsLabel: 'Selected Home Icon'),
            icon: SvgPicture.asset('${assetPath}home-icon.svg',
                semanticsLabel: 'Home Icon'),
            label: 'Trang chủ',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
                '${assetPath}selected-book-plus-icon.svg',
                semanticsLabel: 'Selected Buy Book Icon'),
            icon: SvgPicture.asset('${assetPath}book-plus-icon.svg',
                semanticsLabel: 'Buy Book Icon'),
            label: 'Mua sách',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
                '${assetPath}selected-book-sync-icon.svg',
                semanticsLabel: 'Selected Book Sync Icon'),
            icon: SvgPicture.asset('${assetPath}book-sync-icon.svg',
                semanticsLabel: 'Book Sync Icon'),
            label: 'Đổi sách',
          ),
          NavigationDestination(
            selectedIcon: SvgPicture.asset(
                '${assetPath}selected-address-book-icon.svg',
                semanticsLabel: 'Selected Address Book Icon'),
            icon: SvgPicture.asset('${assetPath}address-book-icon.svg',
                semanticsLabel: 'Address Book Icon'),
            label: 'Cá nhân',
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Padding(padding: EdgeInsets.all(16), child: ExBookSearchBar()),
            Expanded(child: <Widget>[
              const HomePage(),
              const BuyBookPage(),
              const TransferBookPage(),
              const PersonalPage(),
            ][currentPageIndex])
          ],
        ),
      ),
    );
  }
}
