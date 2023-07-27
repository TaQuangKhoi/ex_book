import 'dart:developer';

import 'package:flutter/material.dart';

import '../../library/ex_book_colors.dart';

class NgNhP extends StatelessWidget {
  const NgNhP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(ExBookColor.mauChinh3.colorHex),
      appBar: null,
      body: Stack(
        fit: StackFit.expand,
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
                style: TextStyle(
                  color: Color(ExBookColor.mauChinh1.colorHex),
                  fontSize: 24,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w900,
                  //   height: 36,
                ),
              ),
              Text(
                'Bạn tìm nơi cất giữ những điều cũ kỹ\nEX.BOOK tìm nơi cất giữ những\nnhững quyển sách cũ kỹ ',
                textAlign: TextAlign.center,
                softWrap: true,
                style: TextStyle(
                  color: Color(ExBookColor.mauChinh1.colorHex),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w900,
                  //   height: 24,
                ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // surfaceTintColor: const Color(0xFF074E16),
                    // foregroundColor: const Color(0xFF074E16),
                    backgroundColor: const Color(0xFF074E16),
                    minimumSize:
                        Size(MediaQuery.of(context).size.width - 40, 56),
                  ),
                  onPressed: () {
                    log("Tapped");
                  },
                  child: const Text(
                    'TIẾP TỤC',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      //   fontSize: 18,
                      //   fontFamily: 'Mulish',
                      //   fontWeight: FontWeight.w400,
                      //   letterSpacing: -0.30,
                    ),
                  ))
            ],
          ),
        ],
      ),
    );
  }
}
