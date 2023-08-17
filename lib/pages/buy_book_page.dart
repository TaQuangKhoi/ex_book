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
      name: 'Tâm lý',
      imagePath: 'assets/buy_book_page/tam_ly.png',
    ),
    ExBookCategory(
      name: 'Tịnh Tâm',
      imagePath: 'assets/buy_book_page/tinh_tam.png',
    ),
    ExBookCategory(
      name: 'Văn học',
      imagePath: 'assets/home_page/best_seller_book.png',
    ),
    ExBookCategory(
      name: 'Tiểu thuyết',
      imagePath: 'assets/home_page/best_seller_book.png',
    ),
    ExBookCategory(
      name: 'Khoa học',
      imagePath: 'assets/home_page/best_seller_book.png',
    ),
    ExBookCategory(
      name: 'Học tập',
      imagePath: 'assets/home_page/best_seller_book.png',
    ),
  ];

  List<Color> backgroundColors = [
    const Color(0xFFABE497),
    const Color(0xFFFBEAAD),
    const Color(0xFFD5FAF0),
    const Color(0xFFFACECE),
    const Color(0xFFB2C6FB),
    const Color(0xFFecaee1),
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
                    physics: const NeverScrollableScrollPhysics(),
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
                          imagePath: categories[index].imagePath,
                          backgroundColor: backgroundColors[index],
                          borderColor: const Color(0xFFD0E4BF),
                          textColor: const Color(0xFF074E16),
                        )),
              ],
            ),
            const BookList(title: 'Dành cho bạn'),
          ],
        ),
      ),
    );
  }
}
