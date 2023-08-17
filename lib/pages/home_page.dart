import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library/ex_book_constants.dart';
import '../widgets/category_box.dart';
import '../widgets/news_slide.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        color: ExBookConstants.mauChinh3,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const NewsSlide(),
            const Padding(
                padding: EdgeInsets.all(16),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(right: 8),
                      child: CategoryBox(text: 'Sách Bán Chạy',
                          imagePath: 'assets/home_page/best_seller_book.png'),
                    )),
                    Expanded(
                        child: Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: CategoryBox(text: 'Sách Tìm Kiếm Cao',
                          imagePath: 'assets/home_page/best_search_book.png'),
                    )),
                  ],
                )),
            Text('Dành cho bạn', style: GoogleFonts.mulish(
              textStyle: const TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              ),
            ),),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/second');
              },
              child: const Text('Go to Second Page'),
            ),
            ListView(children: [

            ],)
          ],
        ),
      ),
    );
  }
}
