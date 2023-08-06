import 'package:flutter/material.dart';

import '../library/ex_book_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
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
                              color: Color(ExBookColor.mauChinh3.colorHex),
                              shape: RoundedRectangleBorder(
                                side: const BorderSide(
                                    width: 0.50, color: Color(0xFFC2E4A5)),
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
                              color: Color(ExBookColor.mauChinh3.colorHex),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFC2E4A5)),
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
                              color: Color(ExBookColor.mauChinh3.colorHex),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFC2E4A5)),
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
                              color: Color(ExBookColor.mauChinh3.colorHex),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFC2E4A5)),
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
                              color: Color(ExBookColor.mauChinh3.colorHex),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(
                                    width: 0.50, color: Color(0xFFC2E4A5)),
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
                                  child: Stack(children: []),
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
                                  child: Stack(children: []),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text.rich(
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
              const Text(
                'Tên tài khoản',
                style: TextStyle(
                  color: Color(0xFF293731),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  letterSpacing: -0.30,
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Color(ExBookColor.mauChinh3.colorHex),
                  border: const OutlineInputBorder(),
                  hintText: 'Name_123',
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
