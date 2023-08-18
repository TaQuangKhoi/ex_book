import 'package:ex_book/widgets/three_dot.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library/ex_book_colors.dart';

class TextBetween extends StatelessWidget {
  final int circleIndex;
  final String text1;
  final String text2;
  final String imagePath;

  const TextBetween(
      {super.key,
        required this.circleIndex,
        required this.text1,
        required this.text2,
        required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image(image: AssetImage(imagePath)),
        Text(
          text1,
          textAlign: TextAlign.center,
          style: GoogleFonts.mulish(
              textStyle: TextStyle(
                color: Color(ExBookColor.mauTrungTinh1.colorHex),
                fontSize: 24,
                // fontFamily: 'Mulish',
                fontWeight: FontWeight.w700,
                //   height: 36,
              )),
        ),
        Container(
          margin: const EdgeInsets.only(top: 16),
          child: Text(
            text2,
            textAlign: TextAlign.center,
            softWrap: true,
            style: GoogleFonts.mulish(
                textStyle: TextStyle(
                  color: Color(ExBookColor.mauTrungTinh1.colorHex),
                  fontSize: 16,
                  // fontFamily: 'Mulish',
                  fontWeight: FontWeight.w700,
                  //   height: 24,
                )),
          ),
        ),
        ThreeDot(
          index: circleIndex,
        ),
      ],
    );
  }
}