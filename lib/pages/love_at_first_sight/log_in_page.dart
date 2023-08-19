import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../library/ex_book_colors.dart';
import '../../widgets/ex_book_text_field.dart';
import '../../widgets/facebook_google_sign_in.dart';
import '../main/navigation_page.dart';

class LogInPage extends StatefulWidget {
  const LogInPage({super.key});

  @override
  State<LogInPage> createState() => _LogInPageState();
}

class _LogInPageState extends State<LogInPage> {
  TextEditingController usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: null,
      backgroundColor: Color(ExBookColor.background.colorHex),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
    padding: const EdgeInsets.all(18.0),
        child: Stack(
          children: [
            Column(
              children: [
                ExBookTextField(
                    text: 'Email/ Điện thoại',
                    textFieldText: '@gmail.com',
                    controller: usernameController,
                    isPassword: false,),
                ExBookTextField(
                  text: 'Mật khẩu',
                  textFieldText: '*********',
                  controller: usernameController,
                  isPassword: true,),
                const Row(
                  children: [
                    Text('Quên mật khẩu?'),
                  ],
                )
              ],
            ),
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Column(
                  children: [
                    SizedBox(
                      width: double.infinity,
                      height: 56,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor:
                            Color(ExBookColor.mauChinh1.colorHex),
                          ),
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const NavigationPage()));
                          },
                          child: Text(
                            'ĐĂNG NHẬP',
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
                          color:
                          Color(ExBookColor.mauTrungTinh1.colorHex),
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          letterSpacing: -0.30,
                        ),
                      ),
                    ),
                    const FacebookGoogleSignIn()
                  ],
                )),
          ],
        )),
      ),
    );
  }
}