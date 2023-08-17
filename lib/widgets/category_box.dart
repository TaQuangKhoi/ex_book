import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryBox extends StatefulWidget {
  final String imagePath;
  final String text;

  const CategoryBox({super.key, required this.imagePath, required this.text});

  @override
  State<CategoryBox> createState() => _CategoryBoxState();
}

class _CategoryBoxState extends State<CategoryBox> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width / 2 - 10;

    return Container(
      height: 112,
      decoration: BoxDecoration(
        color: const Color(0xFFAC8C73),
        border: Border.all(
          color: const Color(0xFFAC8C73),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Flexible(
                child: Text(
              widget.text,
              style: GoogleFonts.roboto(
                  textStyle: const TextStyle(
                    color: Colors.white,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              )),
            )),
            Expanded(child: Image(image: AssetImage(widget.imagePath))),
          ],
        ),
      ),
    );
  }
}
