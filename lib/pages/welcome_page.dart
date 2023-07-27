import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import '../library/ex_book_colors.dart';
import 'create_account/introduction_page.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/logo.svg';
    final Widget logo =
        SvgPicture.asset(assetName, semanticsLabel: 'Acme Logo');

    Timer(const Duration(seconds: 3), () {
      log("push");
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => const IntroductionPage()));
    });

    return Scaffold(
        backgroundColor: const Color(0xFFF1F9EA),
        appBar: null,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              logo,
              Text('Ex.Book',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mulish(
                    textStyle: TextStyle(
                      color: Color(ExBookColor.mauChinh1.colorHex),
                      fontSize: 70,
                      // fontFamily: 'Mulish',
                      fontWeight: FontWeight.w900,
                      // height: 36,
                    )
                  )),
              Text('Nơi trao đổi và mua sách cũ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(ExBookColor.mauTrungTinh1.colorHex),
                    fontSize: 16,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                    // height: 36,
                  ))
            ],
          ),
        ));
  }
}
