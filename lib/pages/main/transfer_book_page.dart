import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../component/book_list.dart';
import '../../library/ex_book_constants.dart';
import '../../model/book.dart';
import '../../widgets/news_slide.dart';

class TransferBookPage extends StatefulWidget {
  const TransferBookPage({super.key});

  @override
  State<TransferBookPage> createState() => _TransferBookPageState();
}

class _TransferBookPageState extends State<TransferBookPage> {
  List<String> images = [
    'assets/transfer_book_page/image_1.png',
    'assets/transfer_book_page/image_2.png',
    'assets/transfer_book_page/image_3.png',
  ];

  List<Book> books = [
    Book(
        name: 'Thiên tài bên trái, kẻ điên bên phải',
        author: 'Cao Minh',
        description:
            'Hỡi những con người đang oằn mình trong cuộc sống, bạn biết gì về thế giới của mình?...',
        imagePath: 'assets/transfer_book_page/thien_tai.png'),
    Book(
        name: 'Tâm lý học tội phạm Phác họa chân dung kẻ phạm tội',
        author: 'Diệp Hồng Vũ',
        description:
            'Đằng sau máu và nước mắt là các câu chuyện rợn tóc gáy về tội ác, góc...',
        imagePath: 'assets/transfer_book_page/toi_pham.png'),
    Book(
        name: 'Đắc nhân tâm',
        author: 'Dale Carnegie',
        description:
            'Một số nguyên tắc – Nghệ thuật ứng xử căn bản: Nguyên tắc 1: Không chỉ trích, oán...',
        imagePath: 'assets/transfer_book_page/dac_nhan_tam.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: ExBookConstants.mauChinh3,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              alignment: Alignment.bottomCenter,
              children: [
                Column(
                  children: [
                    NewsSlide(images: images),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(16, 50, 16, 16),
                      child: Text(
                        'Hãy đăng tải sách để chia sẽ nên văn minh trong thế giới của bạn',
                        style: GoogleFonts.mulish(
                          textStyle: const TextStyle(
                            color: Color(0xFF074E16),
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Positioned(
                  bottom: 80,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF074E16),
                      shape: RoundedRectangleBorder(
                        side: const BorderSide(
                          color: Color(0xFFD4F1BB),
                        ),
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: const Text(
                      'Đăng tải',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
            BookList(title: 'Dành cho bạn', books: books),
          ],
        ),
      ),
    );
  }
}
