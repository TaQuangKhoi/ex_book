import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../library/ex_book_colors.dart';

class FacebookGoogleSignIn extends StatefulWidget {
  const FacebookGoogleSignIn({super.key});

  @override
  State<FacebookGoogleSignIn> createState() => _FacebookGoogleSignInState();
}

class _FacebookGoogleSignInState extends State<FacebookGoogleSignIn> {
  @override
  Widget build(BuildContext context) {
    const String assetPath = 'assets/sign_up_page/';

    final Widget fbLogoSvg = SvgPicture.asset('${assetPath}facebook-logo.svg',
        semanticsLabel: 'Facebook Logo');

    final Widget googleLogoSvg = SvgPicture.asset('${assetPath}google-logo.svg',
        semanticsLabel: 'Google Logo');

    return Row(
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
    );
  }
}
