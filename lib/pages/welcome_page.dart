import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'dart:async';

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
              const Text('Ex.Book',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF074E16),
                    fontSize: 70,
                    fontFamily: 'Mulish',
                    fontWeight: FontWeight.w900,
                    // height: 36,
                  )),
              const Text('Nơi trao đổi và mua sách cũ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF293731),
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
