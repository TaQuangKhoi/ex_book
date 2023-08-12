import 'package:flutter/material.dart';

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

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(ExBookColor.mauChinh3.colorHex),
            border: border,
            hintText: 'Tìm kiếm',
            // suffixIcon: suffixIcon,
            enabledBorder: border,
            focusedBorder: border,
            errorBorder: border,
            focusedErrorBorder: border,
          ),
        )
      ],
    );
  }
}
