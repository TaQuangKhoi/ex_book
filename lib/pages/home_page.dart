import 'package:ex_book/component/for_you.dart';
import 'package:flutter/material.dart';

import '../library/ex_book_constants.dart';
import '../widgets/category_box.dart';
import '../widgets/news_slide.dart';

import 'package:cloud_firestore/cloud_firestore.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  FirebaseFirestore firestore = FirebaseFirestore.instance;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ExBookConstants.mauChinh3,
      child: const SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                NewsSlide(),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(right: 8),
                          child: CategoryBox(
                            text: 'Sách Bán Chạy',
                            imagePath: 'assets/home_page/best_seller_book.png',
                            backgroundColor: Color(0xFFAC8C73),
                            borderColor: Color(0xFFAC8C73),
                          ),
                        )),
                        Expanded(
                            child: Padding(
                          padding: EdgeInsets.only(left: 8),
                          child: CategoryBox(
                            text: 'Sách Tìm Kiếm Cao',
                            imagePath: 'assets/home_page/best_search_book.png',
                            backgroundColor: Color(0xFFAC8C73),
                            borderColor: Color(0xFFAC8C73),
                          ),
                        )),
                      ],
                    )),
              ],
            ),
            BookList(title: 'Dành cho bạn'),
          ],
        ),
      ),
    );
  }
}
