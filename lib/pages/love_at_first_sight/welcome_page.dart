import 'dart:developer';

import 'package:ex_book/pages/main/navigation_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:async';

import '../../library/ex_book_colors.dart';
import 'introduction_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    const String assetName = 'assets/logo.svg';
    final Widget logo =
        SvgPicture.asset(assetName, semanticsLabel: 'Ex.Book Logo');


    Timer(const Duration(seconds: 2), () async {
      log('Timer is running');
      // Obtain shared preferences.
      // final SharedPreferences prefs = await SharedPreferences.getInstance();
      // bool? isLogin = prefs.getBool('isLogin') ?? false;
      // log('isLogin:');
      // log('isLogin: $isLogin');

      bool isLogin = false;

      if (isLogin) {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const NavigationPage()));
      } else {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const IntroductionPage()));
      }
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
                    fontSize: 64,
                    // fontFamily: 'Mulish',
                    fontWeight: FontWeight.w700,
                    // height: 36,
                  ))),
              Text('Nơi trao đổi và mua sách cũ',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                    color: Color(ExBookColor.mauTrungTinh1.colorHex),
                    fontSize: 16,
                    // fontFamily: 'Mulish',
                    fontWeight: FontWeight.w500,
                    // height: 36,
                  )))
            ],
          ),
        ));
  }
}
