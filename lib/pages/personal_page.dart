import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../library/ex_book_constants.dart';

class PersonalPage extends StatefulWidget {
  const PersonalPage({super.key});

  @override
  State<PersonalPage> createState() => _PersonalPageState();
}

class _PersonalPageState extends State<PersonalPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xffF1F9EA),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: EdgeInsets.all(16),
                child: Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xffF5F5F5),
                    border: Border.all(
                      color: const Color(0xffE0EBD6),
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      Padding(
                          padding: EdgeInsets.only(top: 24),
                          child: SvgPicture.asset(
                            'assets/personal_page/avatar.svg',
                            width: 100,
                            height: 100,
                          )),
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 16),
                          child: Text(
                            'Nguyễn Văn A',
                            style: GoogleFonts.mulish(
                                textStyle: const TextStyle(
                              color: Color(0xff2A3732),
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              letterSpacing: -0.30,
                            )),
                          )),
                    ],
                  ),
                )),
            Center(
              child: Text('hãy để sách và tâm hồn hòa là một 💖',
                style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                  color: Color(0xff2A3732),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
              ),
            )
          ],
        ),
      ),
    );
  }
}
