import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../library/ex_book_colors.dart';

class ButtonLoginAndSignUp extends StatelessWidget {
  const ButtonLoginAndSignUp({super.key});

  @override
  Widget build(BuildContext context) {
    void goToLogin() {
      Navigator.pushNamed(context, '/login');
    }

    void goToSignUp() {
      Navigator.pushNamed(context, '/signup');
    }

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(20, 0, 10, 0),
                height: 56,
                decoration: ShapeDecoration(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                        width: 2, color: Color(ExBookColor.mauChinh1.colorHex)),
                    borderRadius: BorderRadius.circular(41),
                  ),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(ExBookColor.mauChinh3.colorHex),
                  ),
                  onPressed: goToSignUp,
                  child: Text('ĐĂNG KÝ',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mulish(
                          textStyle: TextStyle(
                            color: Color(ExBookColor.mauChinh1.colorHex),
                            fontSize: 18,
                          ))),
                ))),
        Expanded(
            child: Container(
                margin: const EdgeInsets.fromLTRB(10, 0, 20, 0),
                height: 56,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(ExBookColor.mauChinh1.colorHex),
                  ),
                  onPressed: goToLogin,
                  child: Text('ĐĂNG NHẬP',
                      textAlign: TextAlign.center,
                      style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                          ))),
                ))),
      ],
    );
  }
}
