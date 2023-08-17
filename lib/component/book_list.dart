import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/book.dart';
import '../widgets/book_box.dart';

class BookList extends StatefulWidget {
  final String title;
  final List<Book> books;
  const BookList({super.key, required this.title, required this.books});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Text(
                widget.title,
                style: GoogleFonts.mulish(
                  textStyle: const TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                    letterSpacing: -0.30,
                  ),
                ),
              ),
            ),
          ),
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(top: 8),
                child: BookBox(
                  bookName: widget.books[index].name,
                  authorName: widget.books[index].author,
                  description: widget.books[index].description,
                  imagePath: widget.books[index].imagePath,
                )),
            itemCount: widget.books.length,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
