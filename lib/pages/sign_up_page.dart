import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 812,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFFF1F9EA),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 100,
            top: 599,
            child: SizedBox(
              width: 179,
              height: 44,
              child: Text(
                'ĐĂNG KÝ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                ),
              ),
            ),
          ),
          Positioned(
            left: 11,
            top: 66,
            child: SizedBox(
              width: 375,
              height: 38,
              child: Text.rich(
                TextSpan(
                  children: [
                    TextSpan(
                      text: 'ĐĂNG KÝ TÀI KHOẢN\n',
                      style: TextStyle(
                        color: Color(0xFF2A3732),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.30,
                      ),
                    ),
                    TextSpan(
                      text: 'Bạn hãy nhập thông tin đã đăng ký tài khoản',
                      style: TextStyle(
                        color: Color(0xFF2A3732),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 6,
            child: Container(
              width: 375,
              height: 44,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 375,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 336.33,
                            top: 17.33,
                            child: Container(
                              width: 24.33,
                              height: 11.33,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.35,
                                      child: Container(
                                        width: 22,
                                        height: 11.33,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF2A3732)),
                                            borderRadius: BorderRadius.circular(2.67),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 2,
                                    top: 2,
                                    child: Container(
                                      width: 18,
                                      height: 7.33,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF2A3732),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1.33),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 316,
                            top: 17.33,
                            child: Container(
                              width: 15.33,
                              height: 11,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/15x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 294,
                            top: 17.67,
                            child: Container(
                              width: 17,
                              height: 10.67,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/17x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 21,
                            top: 9,
                            child: Container(
                              width: 54,
                              padding: const EdgeInsets.only(top: 5.33),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 54,
                                    child: Text(
                                      '9:41',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF2A3732),
                                        fontSize: 15,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 375,
                      height: 44,
                      child: Stack(
                        children: [
                          Positioned(
                            left: 336.33,
                            top: 17.33,
                            child: Container(
                              width: 24.33,
                              height: 11.33,
                              child: Stack(
                                children: [
                                  Positioned(
                                    left: 0,
                                    top: 0,
                                    child: Opacity(
                                      opacity: 0.35,
                                      child: Container(
                                        width: 22,
                                        height: 11.33,
                                        decoration: ShapeDecoration(
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(width: 0.50, color: Color(0xFF2A3732)),
                                            borderRadius: BorderRadius.circular(2.67),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 2,
                                    top: 2,
                                    child: Container(
                                      width: 18,
                                      height: 7.33,
                                      decoration: ShapeDecoration(
                                        color: Color(0xFF2A3732),
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(1.33),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Positioned(
                            left: 316,
                            top: 17.33,
                            child: Container(
                              width: 15.33,
                              height: 11,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/15x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 294,
                            top: 17.67,
                            child: Container(
                              width: 17,
                              height: 10.67,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: NetworkImage("https://via.placeholder.com/17x11"),
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            left: 21,
                            top: 9,
                            child: Container(
                              width: 54,
                              padding: const EdgeInsets.only(top: 5.33),
                              child: Row(
                                mainAxisSize: MainAxisSize.min,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    width: 54,
                                    child: Text(
                                      '9:41',
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                        color: Color(0xFF2A3732),
                                        fontSize: 15,
                                        fontFamily: 'SF Pro Text',
                                        fontWeight: FontWeight.w600,
                                        letterSpacing: -0.30,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 112,
            child: Container(
              width: 339,
              height: 68,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 339,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD4F1BA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC2E4A5)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7.91,
                    top: 22,
                    child: SizedBox(
                      width: 323.19,
                      height: 46,
                      child: Opacity(
                        opacity: 0.50,
                        child: Text(
                          'Name_123',
                          style: TextStyle(
                            color: Color(0x7F293731),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 323.19,
                      height: 16,
                      child: Text(
                        'Tên tài khoản',
                        style: TextStyle(
                          color: Color(0xFF293731),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 280,
            child: Container(
              width: 162,
              height: 68,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 162,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD4F1BA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC2E4A5)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3.78,
                    top: 22,
                    child: SizedBox(
                      width: 154.44,
                      height: 46,
                      child: Opacity(
                        opacity: 0.50,
                        child: Text(
                          'DD/MM/YY',
                          style: TextStyle(
                            color: Color(0x7F293731),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 154.44,
                      height: 16,
                      child: Text(
                        'Ngày sinh',
                        style: TextStyle(
                          color: Color(0xFF293731),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 193,
            top: 280,
            child: Container(
              width: 164,
              height: 68,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 164,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD4F1BA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC2E4A5)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 3.83,
                    top: 22,
                    child: SizedBox(
                      width: 156.35,
                      height: 46,
                      child: Opacity(
                        opacity: 0.50,
                        child: Text(
                          'Nam/Nữ',
                          style: TextStyle(
                            color: Color(0x7F293731),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 156.35,
                      height: 16,
                      child: Text(
                        'Giới tính',
                        style: TextStyle(
                          color: Color(0xFF293731),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 448,
            child: Container(
              width: 339,
              height: 68,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 339,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD4F1BA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC2E4A5)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7.91,
                    top: 22,
                    child: SizedBox(
                      width: 323.19,
                      height: 46,
                      child: Opacity(
                        opacity: 0.50,
                        child: Text(
                          '*********',
                          style: TextStyle(
                            color: Color(0x7F293731),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 323.19,
                      height: 16,
                      child: Text(
                        'Nhập lại mật khẩu',
                        style: TextStyle(
                          color: Color(0xFF293731),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 196,
            child: Container(
              width: 339,
              height: 68,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 339,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD4F1BA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC2E4A5)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7.91,
                    top: 22,
                    child: SizedBox(
                      width: 323.19,
                      height: 46,
                      child: Opacity(
                        opacity: 0.50,
                        child: Text(
                          '@gmail.com',
                          style: TextStyle(
                            color: Color(0x7F293731),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 323.19,
                      height: 16,
                      child: Text(
                        'Email / Điện thoại',
                        style: TextStyle(
                          color: Color(0xFF293731),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 18,
            top: 364,
            child: Container(
              width: 339,
              height: 68,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 20,
                    child: Container(
                      width: 339,
                      height: 48,
                      decoration: ShapeDecoration(
                        color: Color(0xFFD4F1BA),
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 0.50, color: Color(0xFFC2E4A5)),
                          borderRadius: BorderRadius.circular(4),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 7.91,
                    top: 22,
                    child: SizedBox(
                      width: 323.19,
                      height: 46,
                      child: Opacity(
                        opacity: 0.50,
                        child: Text(
                          '********',
                          style: TextStyle(
                            color: Color(0x7F293731),
                            fontSize: 16,
                            fontFamily: 'Mulish',
                            fontWeight: FontWeight.w400,
                            letterSpacing: -0.30,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    top: 0,
                    child: SizedBox(
                      width: 323.19,
                      height: 16,
                      child: Text(
                        'Mật khẩu',
                        style: TextStyle(
                          color: Color(0xFF293731),
                          fontSize: 16,
                          fontFamily: 'Mulish',
                          fontWeight: FontWeight.w400,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 603,
            child: Container(
              width: 343,
              height: 183,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 343,
                    height: 56,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 343,
                            height: 56,
                            decoration: ShapeDecoration(
                              color: Color(0xFF064D16),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(41),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8,
                          top: 0,
                          child: SizedBox(
                            width: 327,
                            height: 56,
                            child: Text(
                              'ĐĂNG NHẬP',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontFamily: 'Mulish',
                                fontWeight: FontWeight.w400,
                                letterSpacing: -0.30,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 343,
                    child: Text(
                      'Hoặc',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF2A3732),
                        fontSize: 16,
                        fontFamily: 'Mulish',
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                  Container(
                    width: 101.70,
                    height: 44,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 43.87,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: Color(0xFF074E16),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 57.83,
                          top: 0,
                          child: Container(
                            width: 43.87,
                            height: 44,
                            decoration: ShapeDecoration(
                              color: Color(0xFF074E16),
                              shape: OvalBorder(),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 9.97,
                          top: 10,
                          child: Container(
                            width: 23.93,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(children: [

                                ]),
                          ),
                        ),
                        Positioned(
                          left: 67.80,
                          top: 10,
                          child: Container(
                            width: 23.93,
                            height: 24,
                            clipBehavior: Clip.antiAlias,
                            decoration: BoxDecoration(),
                            child: Stack(children: [

                                ]),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 317,
            top: 312,
            child: Container(
              width: 24,
              height: 24,
              padding: const EdgeInsets.symmetric(horizontal: 0.75, vertical: 3.75),
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 22.50,
                    height: 16.50,
                    child: Stack(children: [

                        ]),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            left: 328,
            top: 397,
            child: Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
            ),
          ),
          Positioned(
            left: 323,
            top: 480,
            child: Container(
              width: 24,
              height: 24,
              clipBehavior: Clip.antiAlias,
              decoration: BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
