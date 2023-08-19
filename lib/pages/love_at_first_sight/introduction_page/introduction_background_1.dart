import 'package:flutter/material.dart';

class IntroBackground1 extends StatelessWidget {
  const IntroBackground1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        const Positioned(
          top: 90,
          left: 0,
          child: Image(
            image: AssetImage(
                'assets/introduction_page/background1/group_101.png'),
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage(
                      'assets/introduction_page/background1/vector_1.png'),
                ))),
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/introduction_page/background1/vector_2.png'),
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/introduction_page/background1/vector_25.png'),
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage(
                    'assets/introduction_page/background1/vector_27.png'),
              )),
        ),
      ],
    );
  }
}