import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../model/book.dart';
import '../widgets/book_box.dart';

class BookList extends StatefulWidget {
  final String title;
  const BookList({super.key, required this.title});

  @override
  State<BookList> createState() => _BookListState();
}

class _BookListState extends State<BookList> {
  List books = [
    Book(
        name: 'Sherlock Holmes',
        author: 'Conan Doyle',
        description:
        'Sherlock Holmes là một nhân vật thám tử hư cấu vào cuối thể kỉ 19 và đầu thế kỉ 20,....',
        imagePath: 'assets/home_page/sherlock_homes.png'),
    Book(
        author: 'J. K. Rowling.',
        name: 'Harry Potter',
        description:
        'Cậu bé Harry Potter một mình chống lại một phù thủy hắc ám Chúa tể Voldemort,...',
        imagePath: 'assets/home_page/sherlock_homes.png'),
    Book(
        author: 'J. K. Rowling.',
        name: 'Harry Potter',
        description:
        'Cậu bé Harry Potter một mình chống lại một phù thủy hắc ám Chúa tể Voldemort,...',
        imagePath: 'assets/home_page/sherlock_homes.png'),
  ];

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
                  bookName: books[index].name,
                  authorName: books[index].author,
                  description: books[index].description,
                  imagePath: books[index].imagePath,
                )),
            itemCount: books.length,
            physics: const NeverScrollableScrollPhysics(),
            primary: false,
            shrinkWrap: true,
          ),
        ],
      ),
    );
  }
}
