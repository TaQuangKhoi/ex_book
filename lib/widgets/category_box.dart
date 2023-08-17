import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CategoryBox extends StatefulWidget {
  final String imagePath;
  final String text;
  final Color backgroundColor;
  final Color borderColor;
  final Color textColor;

  const CategoryBox(
      {super.key,
      required this.imagePath,
      required this.text,
      required this.backgroundColor,
      required this.borderColor,
      required this.textColor});

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
        color: widget.backgroundColor,
        border: Border.all(
          color: widget.borderColor,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Flexible(
                child: Text(
              widget.text,
              style: GoogleFonts.roboto(
                  textStyle: TextStyle(
                color: widget.textColor,
                fontSize: 15,
                fontWeight: FontWeight.w700,
                letterSpacing: -0.30,
              )),
            )),
            Image(
              image: AssetImage(widget.imagePath),
              width: 48,
              fit: BoxFit.fitWidth,
            ),
          ],
        ),
      ),
    );
  }
}
