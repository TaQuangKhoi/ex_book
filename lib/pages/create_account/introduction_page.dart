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
    background = const IntroBackground1();
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
            image: AssetImage('assets/introduction_page/group_101.png'),
          ),
        ),
        Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/introduction_page/vector_1.png'),
                ))),
        Positioned(
          top: 0,
          left: 0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/introduction_page/vector_2.png'),
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/introduction_page/vector_25.png'),
              )),
        ),
        Positioned(
          bottom: 0,
          left: 0,
          child: SizedBox(
              width: MediaQuery.of(context).size.width,
              child: const Image(
                fit: BoxFit.fill,
                image: AssetImage('assets/introduction_page/vector_27.png'),
              )),
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage('assets/introduction_page/hinh3.png')),
            Text(
              'Nơi bạn yêu những thứ cũ kỹ',
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
                'Bạn tìm nơi cất giữ những điều cũ kỹ\nEX.BOOK tìm nơi cất giữ những\nnhững quyển sách cũ kỹ',
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
            const ThreeDot(
              index: 1,
            ),
          ],
        ),
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
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Image(
                image: AssetImage('assets/introduction_page/hinh3.png')),
            Text(
              'Mua sự chữa lành',
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
                'Bạn mua liều thuốc thời gian\nđể chữa lành cho tâm hồn giản đơn',
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
            const ThreeDot(
              index: 2,
            ),
          ],
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
