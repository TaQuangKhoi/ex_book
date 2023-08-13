import 'package:flutter/material.dart';

import '../library/ex_book_colors.dart';

class ThreeDot extends StatelessWidget {
  final int index;

  const ThreeDot({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      width: 40,
      height: 8,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: index == 1
                    ? Color(ExBookColor.mauChinh1.colorHex)
                    : const Color(0xFF7D8984),
                shape: const OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 16,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: index == 2
                    ? Color(ExBookColor.mauChinh1.colorHex)
                    : const Color(0xFF7D8984),
                shape: const OvalBorder(),
              ),
            ),
          ),
          Positioned(
            left: 32,
            top: 0,
            child: Container(
              width: 8,
              height: 8,
              decoration: ShapeDecoration(
                color: index == 3
                    ? Color(ExBookColor.mauChinh1.colorHex)
                    : const Color(0xFF7D8984),
                shape: const OvalBorder(),
              ),
            ),
          ),
        ],
      ),
    );
  }
}