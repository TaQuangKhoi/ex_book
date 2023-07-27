import 'dart:developer';

import 'package:flutter/material.dart';

import '../../library/ex_book_colors.dart';

import 'package:google_fonts/google_fonts.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  late Widget background;

  @override
  void initState() {
    background = const IntroBackground2();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ExBookColor.mauChinh3.colorHex),
      appBar: null,
      body: Stack(
        fit: StackFit.expand,
        alignment: Alignment.center,
        children: [
          background,
          Center(
              child: Container(
            alignment: Alignment.bottomCenter,
            margin: const EdgeInsets.only(bottom: 125),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                // surfaceTintColor: const Color(0xFF074E16),
                // foregroundColor: const Color(0xFF074E16),
                backgroundColor: Color(ExBookColor.mauChinh1.colorHex),
                minimumSize: Size(MediaQuery.of(context).size.width - 40, 56),
              ),
              onPressed: () {
                setState(() {
                  background = const IntroBackground2();
                });
              },
              child: Text('TIẾP TỤC',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    //   fontWeight: FontWeight.w400,
                    //   letterSpacing: -0.30,
                  ))),
            ),
          ))
        ],
      ),
    );
  }
}

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
        const TextBetween(
            circleIndex: 1,
            text1: 'Nơi bạn yêu những thứ cũ kỹ',
            text2:
                'Bạn tìm nơi cất giữ những điều cũ kỹ\nEX.BOOK tìm nơi cất giữ những\nnhững quyển sách cũ kỹ'),
      ],
    );
  }
}

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
        const TextBetween(
          circleIndex: 2,
          text1: 'Mua sự chữa lành',
          text2:
              'Bạn mua liều thuốc thời gian\nđể chữa lành cho tâm hồn giản đơn',
        ),
      ],
    );
  }
}

class TextBetween extends StatelessWidget {
  final int circleIndex;
  final String text1;
  final String text2;

  const TextBetween(
      {super.key,
      required this.circleIndex,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(image: AssetImage('assets/introduction_page/sach_2_1.png')),
        Text(
          text1,
          textAlign: TextAlign.center,
          style: GoogleFonts.mulish(
              textStyle: TextStyle(
            color: Color(ExBookColor.mauTrungTinh1.colorHex),
            fontSize: 24,
            // fontFamily: 'Mulish',
            fontWeight: FontWeight.w700,
            //   height: 36,
          )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Text(
            text2,
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.mulish(
                textStyle: TextStyle(
              color: Color(ExBookColor.mauTrungTinh1.colorHex),
              fontSize: 16,
              // fontFamily: 'Mulish',
              fontWeight: FontWeight.w700,
              //   height: 24,
            )),
          ),
        ),
        ThreeDot(
          index: circleIndex,
        ),
      ],
    );
  }
}

class ThreeDot extends StatelessWidget {
  final int index;

  const ThreeDot({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 40,
      height: 8,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: index == 1
                    ? Color(ExBookColor.mauChinh1.colorHex)
                    : const Color(0xFF7D8984),
                shape: const OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: index == 2
                    ? Color(ExBookColor.mauChinh1.colorHex)
                    : const Color(0xFF7D8984),
                shape: const OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: index == 3
                    ? Color(ExBookColor.mauChinh1.colorHex)
                    : const Color(0xFF7D8984),
                shape: const OvalBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
