import 'package:flutter/material.dart';

import '../component/for_you.dart';
import '../library/ex_book_constants.dart';
import '../widgets/news_slide.dart';

class TransferBookPage extends StatefulWidget {
  const TransferBookPage({super.key});

  @override
  State<TransferBookPage> createState() => _TransferBookPageState();
}

class _TransferBookPageState extends State<TransferBookPage> {
  List<String> images = [
    'assets/news_slide/image_1.png',
    'assets/news_slide/image_2.png',
    'assets/news_slide/image_3.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ExBookConstants.mauChinh3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            NewsSlide(images: images),
            BookList(title: 'Dành cho bạn'),
          ],
        ),
      ),
    );
  }
}
