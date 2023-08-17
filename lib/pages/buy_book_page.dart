import 'package:flutter/material.dart';

import '../component/for_you.dart';
import '../library/ex_book_constants.dart';
import '../model/category.dart';
import '../widgets/category_box.dart';
import '../widgets/news_slide.dart';

class BuyBookPage extends StatefulWidget {
  const BuyBookPage({super.key});

  @override
  State<BuyBookPage> createState() => _BuyBookPageState();
}

class _BuyBookPageState extends State<BuyBookPage> {
  List<ExBookCategory> categories = [
    ExBookCategory(
        name: 'Tâm lý', imagePath: 'assets/home_page/best_seller_book.png'),
    ExBookCategory(
        name: 'Tịnh Tâm', imagePath: 'assets/home_page/best_seller_book.png'),
    ExBookCategory(
        name: 'Văn học', imagePath: 'assets/home_page/best_seller_book.png'),
    ExBookCategory(
        name: 'Tiểu thuyết',
        imagePath: 'assets/home_page/best_seller_book.png'),
    ExBookCategory(
        name: 'Khoa học', imagePath: 'assets/home_page/best_seller_book.png'),
    ExBookCategory(
        name: 'Học tập', imagePath: 'assets/home_page/best_seller_book.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ExBookConstants.mauChinh3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                const NewsSlide(),
                GridView.builder(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(16),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      mainAxisSpacing: 16,
                      crossAxisSpacing: 20,
                      childAspectRatio: 1.5,
                    ),
                    itemCount: categories.length,
                    itemBuilder: (context, index) => CategoryBox(
                        text: categories[index].name,
                        imagePath: categories[index].imagePath)),
              ],
            ),
            const BookList(title: 'Dành cho bạn'),
          ],
        ),
      ),
    );
  }
}
