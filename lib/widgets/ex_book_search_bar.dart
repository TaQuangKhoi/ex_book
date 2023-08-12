import 'package:flutter/material.dart';

import '../library/ex_book_colors.dart';

class SearchBar extends StatefulWidget {
  const SearchBar({super.key});

  @override
  State<SearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<SearchBar> {
  @override
  Widget build(BuildContext context) {
    OutlineInputBorder border = OutlineInputBorder(
        borderRadius: BorderRadius.circular(4),
        borderSide: BorderSide(
            color: Color(ExBookColor.mauChinh2.colorHex), width: 1.0));

    return Row(
      children: [
        TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(ExBookColor.mauChinh3.colorHex),
            border: border,
            hintText: hintText,
            suffixIcon: suffixIcon,
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
