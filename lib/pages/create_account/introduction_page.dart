import 'package:flutter/material.dart';

class NgNhP extends StatelessWidget {
  const NgNhP({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFFF1F9EA),
      appBar: null,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          Image(image: AssetImage('assets/introduction_page/hinh3.png')),
          Text(
            'TIẾP TỤC',
            textAlign: TextAlign.center,
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 18,
            //   fontFamily: 'Mulish',
            //   fontWeight: FontWeight.w400,
            //   letterSpacing: -0.30,
            // ),
          ),
          Text(
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
          Text(
            'Bạn tìm nơi cất giữ những điều cũ kỹ\nEX.BOOK tìm nơi cất giữ những \nnhững quyển sách cũ kỹ ',
            textAlign: TextAlign.center,
            // style: TextStyle(
            //   color: Color(0xFF293731),
            //   fontSize: 16,
            //   fontFamily: 'Mulish',
            //   fontWeight: FontWeight.w700,
            //   height: 24,
            // ),
          )
        ],
      ),
    );
  }
}
