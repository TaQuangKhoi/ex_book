import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class BookBox extends StatefulWidget {
  final String imagePath;
  final String bookName;
  final String authorName;
  final String description;

  const BookBox(
      {super.key,
      required this.imagePath,
      required this.bookName,
      required this.authorName,
      required this.description});

  @override
  State<BookBox> createState() => _BookBoxState();
}

class _BookBoxState extends State<BookBox> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 112,
      decoration: BoxDecoration(
        color: const Color(0xFFF5F5F5),
        border: Border.all(
          color: const Color(0xFFF5F5F5),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Expanded(
                child: Image(
                  image: AssetImage(widget.imagePath),
                  width: 64,
                )),
            Flexible(
                child: Column(
                  children: [
                    Flexible(child: Text(
                      widget.bookName,
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Color(0xFF2A3732),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            letterSpacing: -0.30,
                          )),
                    )),
                    Flexible(child: Text(
                      widget.authorName,
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Color(0xFF2A3732),
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                            letterSpacing: -0.30,
                          )),
                    )),
                    Flexible(child: Text(
                      widget.description,
                      style: GoogleFonts.roboto(
                          textStyle: const TextStyle(
                            color: Color(0xFF2A3732),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            letterSpacing: -0.30,
                          )),
                    )),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
