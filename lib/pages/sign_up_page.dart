import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library/ex_book_colors.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  InputDecoration getTextFieldStyle(String hintText, [Widget? suffixIcon]) {
    return InputDecoration(
      filled: true,
      fillColor: Color(ExBookColor.mauChinh3.colorHex),
      border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4),
          borderSide: BorderSide(
              color: Color(ExBookColor.mauChinh2.colorHex), width: 1.0)),
      hintText: hintText,
      suffixIcon: suffixIcon,
      // focusedBorder: InputBorder.none,
      // enabledBorder: InputBorder.none,
      // errorBorder: InputBorder.none,
      // disabledBorder: InputBorder.none,
    );
  }

  @override
  Widget build(BuildContext context) {
    TextStyle labelTextFieldStyle = GoogleFonts.mulish(
        textStyle: const TextStyle(
      color: Color(0xFF293731),
      fontSize: 16,
      fontWeight: FontWeight.w400,
      letterSpacing: -0.30,
    ));

    const String assetPath = 'assets/sign_up_page/';

    final Widget fbLogoSvg = SvgPicture.asset('${assetPath}facebook-logo.svg',
        semanticsLabel: 'Facebook Logo');

    final Widget calendarIconSvg = SvgPicture.asset(
      '${assetPath}calendar-icon.svg',
      semanticsLabel: 'Calendar Icon',
      fit: BoxFit.scaleDown,
    );

    final Widget sexIconSvg = SvgPicture.asset(
      '${assetPath}people-sharp-icon.svg',
      semanticsLabel: 'Calendar Icon',
      fit: BoxFit.scaleDown,
    );

    return Scaffold(
      appBar: null,
      backgroundColor: Color(ExBookColor.background.colorHex),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(18.0),
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
                )),
              ),
              Text(
                'Bạn hãy nhập thông tin đã đăng ký tài khoản',
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                    color: Color(0xFF2A3732),
                    fontSize: 16,
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
                    decoration: getTextFieldStyle('DD/MM/YY', calendarIconSvg),
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
                  DropdownButton(
                    hint: const Text('Nam/Nữ'),
                    items: const [
                      DropdownMenuItem(
                        child: Text('Nam'),
                        value: 1,
                      ),
                      DropdownMenuItem(
                        child: Text('Nữ'),
                        value: 2,
                      ),
                    ],
                    onChanged: (int? value) {},
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
      ),
    );
  }
}
