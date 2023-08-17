import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

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
                padding: const EdgeInsets.all(16),
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
              child: Text(
                'hãy để sách và tâm hồn hòa là một 💖',
                style: GoogleFonts.mulish(
                    textStyle: const TextStyle(
                  color: Color(0xff2A3732),
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                )),
              ),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFF5F5F5),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color(0xFFC0E1A3),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Chỉnh sửa trang cá nhân',
                      style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                        color: Color(0xff2A3732),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                  )),
            ),
            SizedBox(
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'Thêm đánh giá +',
                      style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                        color: Color(0xff2A3732),
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFD4F1BB),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Color(0xFFC0E1A3),
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                  )),
            ),
            Padding(
                padding: EdgeInsets.only(top: 16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        Text(
                          '196',
                          style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                            color: Color(0xff2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                        Text(
                          'Yêu thích',
                          style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                            color: Color(0xff2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '37',
                          style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                            color: Color(0xff2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                        Text(
                          'Đang theo dõi',
                          style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                            color: Color(0xff2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Text(
                          '13',
                          style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                            color: Color(0xff2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                        Text(
                          'Người theo dõi',
                          style: GoogleFonts.mulish(
                              textStyle: const TextStyle(
                            color: Color(0xff2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          )),
                        ),
                      ],
                    ),
                  ],
                )),
            SizedBox(
              width: double.infinity,
              child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.red,
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          width: 1,
                          color: Colors.white,
                        ),
                        borderRadius: BorderRadius.circular(4),
                      ),
                    ),
                    child: Text(
                      'Đăng xuất',
                      style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      )),
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
