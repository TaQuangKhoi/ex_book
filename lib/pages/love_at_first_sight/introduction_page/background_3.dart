import 'package:flutter/material.dart';

import '../../../widgets/text_between.dart';

class IntroBackground3 extends StatelessWidget {
  const IntroBackground3({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Positioned(
          top: 100,
          left: 0,
          child: Image(
            image:
            AssetImage('assets/introduction_page/background3/vector_5.png'),
          ),
        ),
        const Positioned(
          top: 120,
          left: 0,
          child: Image(
            image:
            AssetImage('assets/introduction_page/background3/vector_3.png'),
          ),
        ),
        const Positioned(
          top: 120,
          left: 20,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background3/group_105.png'),
          ),
        ),
        const Positioned(
          top: 160,
          left: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background3/group_106.png'),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Image(
            image:
            AssetImage('assets/introduction_page/background3/vector_1.png'),
          ),
        ),
        const Positioned(
          top: 0,
          right: 0,
          child: Image(
            image:
            AssetImage('assets/introduction_page/background3/vector_6.png'),
          ),
        ),
        const Positioned(
          top: 20,
          right: 120,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background3/group_102.png'),
          ),
        ),
        const Positioned(
          top: 40,
          right: 60,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background3/group_102.png'),
          ),
        ),
        const Positioned(
          top: 40,
          right: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background3/group_104.png'),
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
                  'assets/introduction_page/background3/vector_4.png'),
            ),
          ),
        ),
        const Positioned(
          bottom: 0,
          right: 0,
          child: Image(
            image:
            AssetImage('assets/introduction_page/background3/vector_2.png'),
          ),
        ),
      ],
    );
  }
}