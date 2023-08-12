import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../library/ex_book_colors.dart';

class ExBookSearchBar extends StatefulWidget {
  const ExBookSearchBar({super.key});

  @override
  State<ExBookSearchBar> createState() => _ExBookSearchBarState();
}

class _ExBookSearchBarState extends State<ExBookSearchBar> {
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
            color: Color(ExBookColor.mauChinh2.colorHex), width: 1.0));

    const String assetPath = 'assets/search_bar/';

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          height: 44,
          width: 300,
          child: TextField(
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(ExBookColor.mauChinh3.colorHex),
              border: border,
              hintText: 'Tìm kiếm',
              suffixIcon: SvgPicture.asset('${assetPath}cart-icon.svg',
                  semanticsLabel: 'Cart Icon', fit: BoxFit.scaleDown),
              prefixIcon: SvgPicture.asset('${assetPath}search-icon.svg',
                  semanticsLabel: 'Search Icon', fit: BoxFit.scaleDown),
              enabledBorder: border,
              focusedBorder: border,
              errorBorder: border,
              focusedErrorBorder: border,
            ),
          ),
        ),
        SvgPicture.asset('${assetPath}bell-icon.svg',
            semanticsLabel: 'Bell Icon'),
        SvgPicture.asset('${assetPath}coin-icon.svg',
            semanticsLabel: 'Coin Icon')
      ],
    );
  }
}
