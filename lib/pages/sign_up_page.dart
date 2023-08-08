import 'dart:developer';

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
  int gioiTinh = 0;
  String birthday = '';
  late TextEditingController birthdayController;
  late TextEditingController tenTaiKhoanController;
  late TextEditingController emailController;
  late TextEditingController matKhauController;
  late TextEditingController nhapLaiMatKhauController;

  TextStyle labelTextFieldStyle = GoogleFonts.mulish(
      textStyle: const TextStyle(
    color: Color(0xFF293731),
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: -0.30,
  ));

  InputDecoration getTextFieldStyle(String hintText, [Widget? suffixIcon]) {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
            color: Color(ExBookColor.mauChinh2.colorHex), width: 1.0));

    return InputDecoration(
      filled: true,
      fillColor: Color(ExBookColor.mauChinh3.colorHex),
      border: border,
      hintText: hintText,
      suffixIcon: suffixIcon,
      enabledBorder: border,
      focusedBorder: border,
      errorBorder: border,
      focusedErrorBorder: border,
    );
  }

  late DateTime selectedDate = DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    log('select date');
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        firstDate: DateTime(2015, 8),
        lastDate: DateTime(2101));
    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
        String date = selectedDate.toString().substring(0, 10);
        log('date: $date');
        birthdayController.text = date;
      });
    }
  }

  Widget getInputUI(String text, String textFieldText,
      [Widget? suffixIcon,
      TextEditingController? controller,
      bool? isPassword]) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            text,
            style: labelTextFieldStyle,
          ),
          TextField(
            controller: controller,
            obscureText: isPassword ?? false,
            decoration: getTextFieldStyle(textFieldText, suffixIcon),
          ),
        ],
      ),
    );
  }

  Widget getDropDownUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Giới tính',
            style: labelTextFieldStyle,
          ),
          DecoratedBox(
            decoration: BoxDecoration(
              color: Color(ExBookColor.mauChinh3.colorHex),
              border: Border.all(
                  color: Color(ExBookColor.mauChinh2.colorHex), width: 1),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15),
              child: Container(
                // height: 64,
                alignment: Alignment.center,
                child: DropdownButton(
                  dropdownColor: Color(ExBookColor.mauChinh3.colorHex),
                  isExpanded: true,
                  borderRadius: BorderRadius.circular(4),
                  value: gioiTinh,
                  items: [
                    DropdownMenuItem(
                      enabled: false,
                      value: 0,
                      child: Text('Nam/Nữ',
                          style: TextStyle(color: Theme.of(context).hintColor)),
                    ),
                    const DropdownMenuItem(
                      value: 1,
                      child: Text('Nam'),
                    ),
                    const DropdownMenuItem(
                      value: 2,
                      child: Text('Nữ'),
                    ),
                  ],
                  onChanged: (int? value) {
                    setState(() {
                      gioiTinh = value!;
                    });
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    birthdayController = TextEditingController();
    tenTaiKhoanController = TextEditingController();
    emailController = TextEditingController();
    matKhauController = TextEditingController();
    nhapLaiMatKhauController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    const String assetPath = 'assets/sign_up_page/';

    final Widget fbLogoSvg = SvgPicture.asset('${assetPath}facebook-logo.svg',
        semanticsLabel: 'Facebook Logo');

    final Widget googleLogoSvg = SvgPicture.asset('${assetPath}google-logo.svg',
        semanticsLabel: 'Google Logo');

    final Widget calendarIconSvg = IconButton(
        onPressed: () {
          log('calendarIconSvg onPressed');
          _selectDate(context);
        },
        icon: SvgPicture.asset(
          '${assetPath}calendar-icon.svg',
          semanticsLabel: 'Calendar Icon',
          fit: BoxFit.scaleDown,
        ));

    final Widget eyeIconSvg = IconButton(
        onPressed: () {
          log('eyeIconSvg onPressed');
        },
        icon: SvgPicture.asset(
          '${assetPath}eye-icon.svg',
          semanticsLabel: 'Show Password Icon',
          fit: BoxFit.scaleDown,
        ));

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
          child: ListView(
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.max,
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
                    'Bạn hãy nhập thông tin để đăng ký tài khoản',
                    style: GoogleFonts.mulish(
                      textStyle: const TextStyle(
                        color: Color(0xFF2A3732),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                  getInputUI(
                      'Tên tài khoản', 'Name_123', null, tenTaiKhoanController),
                  getInputUI('Email / Điện thoại', '@gmail.com', null,
                      emailController),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Expanded(
                          flex: 1,
                          child: getInputUI('Ngày sinh', 'DD/MM/YY',
                              calendarIconSvg, birthdayController)),
                      const SizedBox(width: 10.0),
                      Expanded(flex: 1, child: getDropDownUI()),
                    ],
                  ),
                  getInputUI(
                      'Mật khẩu', '*********', eyeIconSvg, matKhauController, true),
                  getInputUI('Nhập lại mật khẩu', '*********', eyeIconSvg,
                      nhapLaiMatKhauController, true),
                  SizedBox(
                    width: double.infinity,
                    height: 56,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor:
                              Color(ExBookColor.mauChinh1.colorHex),
                        ),
                        onPressed: () {},
                        child: Text(
                          'ĐĂNG KÝ',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.mulish(
                            textStyle: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w400,
                              letterSpacing: -0.30,
                            ),
                          ),
                        )),
                  ),
                  Text(
                    'Hoặc',
                    textAlign: TextAlign.center,
                    style: GoogleFonts.mulish(
                      textStyle: TextStyle(
                        color: Color(ExBookColor.mauTrungTinh1.colorHex),
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        letterSpacing: -0.30,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(44, 44),
                            shape: const CircleBorder(),
                            backgroundColor:
                                Color(ExBookColor.mauChinh1.colorHex),
                          ),
                          onPressed: () {},
                          child: fbLogoSvg),
                      ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            minimumSize: const Size(44, 44),
                            shape: const CircleBorder(),
                            backgroundColor:
                                Color(ExBookColor.mauChinh1.colorHex),
                          ),
                          onPressed: () {},
                          child: googleLogoSvg),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
