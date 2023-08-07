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
        birthdayController.text = selectedDate.toString().substring(0, 10);
      });
    }
  }

  @override
  void initState() {
    // TODO: implement initState
    birthdayController = TextEditingController();
    super.initState();
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
                    controller: birthdayController,
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
                  DecoratedBox(
                    decoration: BoxDecoration(
                      color: Color(ExBookColor.mauChinh3.colorHex),
                      border: Border.all(
                          color: Color(ExBookColor.mauChinh2.colorHex),
                          width: 2),
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15, right: 15),
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
                                style: TextStyle(
                                    color: Theme.of(context).hintColor)),
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
