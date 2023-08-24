import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../library/ex_book_colors.dart';
import '../../../widgets/text_between.dart';
import 'background_1.dart';
import 'background_2.dart';
import 'background_3.dart';
import 'button_login_and_sign_up.dart';

class IntroductionPage extends StatefulWidget {
  const IntroductionPage({super.key});

  @override
  State<IntroductionPage> createState() => _IntroductionPageState();
}

class _IntroductionPageState extends State<IntroductionPage> {
  int circleIndex = 1;
  int _index = 0;
  late Widget background = getBackground();

  List<Widget> backgrounds = [
    const IntroBackground1(),
    const IntroBackground2(),
    const IntroBackground3(),
  ];

  List<Widget> textBetweenList = [
    const TextBetween(
      circleIndex: 1,
      text1: 'Nơi bạn yêu những thứ cũ kỹ',
      text2:
          'Bạn tìm nơi cất giữ những điều cũ kỹ\nEX.BOOK tìm nơi cất giữ những\nnhững quyển sách cũ kỹ',
      imagePath: 'assets/introduction_page/background1/hinh3.png',
    ),
    const TextBetween(
      circleIndex: 2,
      text1: 'Mua sự chữa lành',
      text2: 'Bạn mua liều thuốc thời gian\nđể chữa lành cho tâm hồn giản đơn',
      imagePath: 'assets/introduction_page/background2/sach_2_1.png',
    ),
    const TextBetween(
      circleIndex: 3,
      text1: 'Những cuốn sách tái sinh',
      text2:
          'Chúng mình là EX.BOOK nơi tái sinh \nnhững quyển sách cũ kỹ trên tay bạn',
      imagePath: 'assets/introduction_page/background3/hinh_sach_1_1.png',
    ),
  ];

  @override
  void initState() {
    // background = const IntroBackground1();
    // circleIndex = 1;
    _index = 0;
    super.initState();
  }

  Widget getBackground() {
    switch (circleIndex) {
      case 1:
        return const IntroBackground1();
      case 2:
        return const IntroBackground2();
      case 3:
        return const IntroBackground3();
      default:
        return const IntroBackground1();
    }
  }

  void handleSwipe(DragEndDetails details) {
    double velocity = details.velocity.pixelsPerSecond.dx;
    if (velocity > 0) {
      if (circleIndex == 1) {
        return;
      }
      circleIndex--;
      log(circleIndex.toString());
      setState(() {
        _index--;
        background = getBackground();
      });
    } else if (velocity < 0) {
      if (circleIndex == 3) {
        return;
      }
      circleIndex++;
      log(circleIndex.toString());
      setState(() {
        _index++;
        background = getBackground();
      });
    }
    log("index: $_index");
  }

  void nextBackground() {
    if (circleIndex == 3) {
      return;
    }
    circleIndex++;
    log("circleIndex.toString() ${circleIndex.toString()}");
    setState(() {
      _index++;
      background = getBackground();
    });
    log("index: $_index");
  }

  @override
  Widget build(BuildContext context) {
    Widget buttonNext = ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(ExBookColor.mauChinh1.colorHex),
        minimumSize: Size(MediaQuery.of(context).size.width - 40, 56),
      ),
      onPressed: nextBackground,
      child: Text('TIẾP TỤC',
          textAlign: TextAlign.center,
          style: GoogleFonts.mulish(
              textStyle: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            //   fontWeight: FontWeight.w400,
            letterSpacing: -0.30,
          ))),
    );

    return WillPopScope(
        child: GestureDetector(
          onPanEnd: handleSwipe,
          child: Scaffold(
            backgroundColor: Color(ExBookColor.mauChinh3.colorHex),
            appBar: null,
            body: Stack(
              fit: StackFit.expand,
              alignment: Alignment.center,
              children: [
                backgrounds[_index],
                Center(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    textBetweenList[_index],
                  ],
                )),
                Positioned(
                  bottom: 100,
                  left: 16,
                  right: 16,
                  child: circleIndex == 3
                      ? const ButtonLoginAndSignUp()
                      : buttonNext,
                  // child: buttonNext,
                ),
              ],
            ),
          ),
        ),
        onWillPop: () async {
          return false;
        });
  }
}
