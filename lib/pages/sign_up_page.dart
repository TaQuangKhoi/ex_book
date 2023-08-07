import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library/ex_book_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  InputDecoration getTextFieldStyle(hintText) {
    return InputDecoration(
      filled: true,
      fillColor: Color(ExBookColor.mauChinh2.colorHex),
      border: const OutlineInputBorder(),
      hintText: hintText,
      focusedBorder: InputBorder.none,
      enabledBorder: InputBorder.none,
      errorBorder: InputBorder.none,
      disabledBorder: InputBorder.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle labelTextFieldStyle = const TextStyle(
      color: Color(0xFF293731),
      fontSize: 16,
      fontFamily: 'Mulish',
      fontWeight: FontWeight.w400,
      letterSpacing: -0.30,
    );

    const String fbLogoAssetName = 'assets/sign_up_page/facebook-logo.svg';
    final Widget fbLogoSvg =
        SvgPicture.asset(fbLogoAssetName, semanticsLabel: 'Acme Logo');

    return Scaffold(
      appBar: null,
      backgroundColor: Color(ExBookColor.mauChinh3.colorHex),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'ĐĂNG KÝ TÀI KHOẢN',
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                  color: Color(0xFF2A3732),
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  letterSpacing: -0.30,
                )
              ),
            ),
            Text(
              'Bạn hãy nhập thông tin đã đăng ký tài khoản',
              style: GoogleFonts.mulish(
                textStyle: const TextStyle(
                  color: Color(0xFF2A3732),
                  fontSize: 16,
                  fontFamily: 'Mulish',
                  fontWeight: FontWeight.w400,
                  // letterSpacing: -0.30,
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tên tài khoản',
                  style: labelTextFieldStyle,
                ),
                TextField(
                  decoration: getTextFieldStyle('Name_123'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Email / Điện thoại',
                  style: labelTextFieldStyle,
                ),
                TextField(
                  decoration: getTextFieldStyle('@gmail.com'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Ngày sinh',
                  style: labelTextFieldStyle,
                ),
                TextField(
                  decoration: getTextFieldStyle('DD/MM/YY'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Giới tính',
                  style: labelTextFieldStyle,
                ),
                TextField(
                  decoration: getTextFieldStyle('Nam/Nữ'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Mật khẩu',
                  style: labelTextFieldStyle,
                ),
                TextField(
                  decoration: getTextFieldStyle('*********'),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nhập lại mật khẩu',
                  style: labelTextFieldStyle,
                ),
                TextField(
                  decoration: getTextFieldStyle('*********'),
                ),
              ],
            ),
            const Center(
              child: ElevatedButton(
                  onPressed: null,
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
                  )),
            ),
            const Text(
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
            ElevatedButton(onPressed: null, child: fbLogoSvg),
          ],
        ),
      ),
    );
  }
}
