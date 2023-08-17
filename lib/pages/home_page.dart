import 'package:ex_book/component/for_you.dart';
import 'package:flutter/material.dart';

import '../library/ex_book_constants.dart';
import '../model/book.dart';
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
    List<String> images = [
      'assets/news_slide/image_1.png',
      'assets/news_slide/image_2.png',
      'assets/news_slide/image_3.png',
    ];

    List<Book> books = [
      Book(
          name: 'Sherlock Holmes',
          author: 'Conan Doyle',
          description:
              'Sherlock Holmes là một nhân vật thám tử hư cấu vào cuối thể kỉ 19 và đầu thế kỉ 20,....',
          imagePath: 'assets/home_page/sherlock_homes.png'),
      Book(
          author: 'J. K. Rowling.',
          name: 'Harry Potter',
          description:
              'Cậu bé Harry Potter một mình chống lại một phù thủy hắc ám Chúa tể Voldemort,...',
          imagePath: 'assets/home_page/sherlock_homes.png'),
      Book(
          author: 'J. K. Rowling.',
          name: 'Harry Potter',
          description:
              'Cậu bé Harry Potter một mình chống lại một phù thủy hắc ám Chúa tể Voldemort,...',
          imagePath: 'assets/home_page/sherlock_homes.png'),
    ];

    return Container(
      color: ExBookConstants.mauChinh3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                NewsSlide(images: images),
                const Padding(
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
                            textColor: Colors.white,
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
                            textColor: Colors.white,
                          ),
                        )),
                      ],
                    )),
              ],
            ),
            BookList(title: 'Dành cho bạn', books: books),
          ],
        ),
      ),
    );
  }
}
