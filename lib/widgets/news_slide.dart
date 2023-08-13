import 'package:ex_book/widgets/three_dot.dart';
import 'package:flutter/material.dart';

class NewsSlide extends StatefulWidget {
  const NewsSlide({super.key});

  @override
  State<NewsSlide> createState() => _NewsSlideState();
}

class _NewsSlideState extends State<NewsSlide> {
  int index = 1;

  var images = [
    'assets/news_slide/image_1.png',
    'assets/news_slide/image_2.png',
    'assets/news_slide/image_3.png',
  ];

  String currentImage = '';

  @override
  void initState() {
    // TODO: implement initState
    currentImage = images[0];
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: Stack(
        children: [
          Image.asset(
            currentImage,
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Center(
              child: ThreeDot(index: index),
            ),
          )
        ],
      ),
    );
  }
}
