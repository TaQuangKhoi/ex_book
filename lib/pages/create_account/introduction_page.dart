import 'dart:developer';
import 'dart:ffi';

import 'package:flutter/material.dart';

class NgNhP extends StatelessWidget {
  const NgNhP({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF1F9EA),
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
                  child: const FittedBox(
                      fit: BoxFit.fill,
                      child: Image(
                        image:
                            AssetImage('assets/introduction_page/vector_1.png'),
                      )))),
          Positioned(
            top: 0,
            left: 0,
            child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: const FittedBox(
                  fit: BoxFit.fill,
                  child: Image(
                    image: AssetImage('assets/introduction_page/vector_2.png'),
                  ),
                )),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                  image: AssetImage('assets/introduction_page/hinh3.png')),
              const Text(
                'Nơi bạn yêu những thứ cũ kỹ ',
                textAlign: TextAlign.center,
                // style: TextStyle(
                //   color: Color(0xFF293731),
                //   fontSize: 24,
                //   fontFamily: 'Mulish',
                //   fontWeight: FontWeight.w700,
                //   height: 36,
                // ),
              ),
              const Text(
                'Bạn tìm nơi cất giữ những điều cũ kỹ\nEX.BOOK tìm nơi cất giữ những \nnhững quyển sách cũ kỹ ',
                textAlign: TextAlign.center,
                // style: TextStyle(
                //   color: Color(0xFF293731),
                //   fontSize: 16,
                //   fontFamily: 'Mulish',
                //   fontWeight: FontWeight.w700,
                //   height: 24,
                // ),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    // surfaceTintColor: const Color(0xFF074E16),
                    // foregroundColor: const Color(0xFF074E16),
                    backgroundColor: const Color(0xFF074E16),
                  ),
                  onPressed: () {log("Tapped");},
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
          )
        ],
      ),
    );
  }
}
