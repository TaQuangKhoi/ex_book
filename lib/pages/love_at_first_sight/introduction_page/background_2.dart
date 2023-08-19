import 'package:flutter/material.dart';

import '../../../widgets/text_between.dart';

class IntroBackground2 extends StatelessWidget {
  const IntroBackground2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Positioned(
          top: 0,
          left: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/vector_30.png'),
          ),
        ),
        const Positioned(
          top: 0,
          left: 0,
          child: Image(
            image:
            AssetImage('assets/introduction_page/background2/vector_3.png'),
          ),
        ),
        const Positioned(
          top: 20,
          left: 20,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/group_105.png'),
          ),
        ),
        const Positioned(
          top: 60,
          left: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/group_106.png'),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/vector_29.png'),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/vector_28.png'),
          ),
        ),
        const Positioned(
          top: 190,
          right: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/group_108.png'),
          ),
        ),
        const Positioned(
          top: 100,
          right: 20,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background2/group_108.png'),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/introduction_page/background2/vector_25.png'),
            ),
          ),
        ),
        Positioned(
          bottom: 0,
          right: 0,
          child: SizedBox(
            width: MediaQuery.of(context).size.width,
            child: const Image(
              fit: BoxFit.fill,
              image: AssetImage(
                  'assets/introduction_page/background2/vector_27.png'),
            ),
          ),
        ),
        // const TextBetween(
        //   circleIndex: 2,
        //   text1: 'Mua sự chữa lành',
        //   text2:
        //   'Bạn mua liều thuốc thời gian\nđể chữa lành cho tâm hồn giản đơn',
        //   imagePath: 'assets/introduction_page/background2/sach_2_1.png',
        // ),
      ],
    );
  }
}