import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library/ex_book_colors.dart';

class ExBookTextField extends StatefulWidget {
  final String text;
  final String textFieldText;
  final TextEditingController? controller;
  final Widget? suffixIcon;
  final bool? isPassword;

  const ExBookTextField(
      {super.key,
      required this.text,
      required this.textFieldText,
      this.controller,
      this.suffixIcon,
      this.isPassword});

  @override
  State<ExBookTextField> createState() => _ExBookTextFieldState();
}

class _ExBookTextFieldState extends State<ExBookTextField> {
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

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            widget.text,
            style: labelTextFieldStyle,
          ),
          TextField(
            controller: widget.controller,
            obscureText: widget.isPassword ?? false,
            decoration:
                getTextFieldStyle(widget.textFieldText, widget.suffixIcon),
          ),
        ],
      ),
    );
  }
}