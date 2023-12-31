import 'dart:async';

import 'package:ex_book/widgets/three_dot.dart';
import 'package:flutter/material.dart';

class NewsSlide extends StatefulWidget {
  final List<String> images;
  const NewsSlide({super.key, required this.images});

  @override
  State<NewsSlide> createState() => _NewsSlideState();
}

class _NewsSlideState extends State<NewsSlide> {
  int index = 1;

  String currentImage = '';

  late Timer _timer;

  @override
  void initState() {
    // TODO: implement initState
    currentImage = widget.images[index - 1];
    _timer = Timer.periodic(
      const Duration(seconds: 5),
      (Timer timer) {
        if (index == 3) {
          setState(() {
            index = 1;
            currentImage = widget.images[index - 1];
          });
        } else {
          setState(() {
            index++;
            currentImage = widget.images[index - 1];
          });
        }
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Image.asset(
            currentImage,
            fit: BoxFit.fitWidth,
            width: double.infinity,
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
