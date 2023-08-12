import 'package:flutter/material.dart';

class TransferBookPage extends StatefulWidget {
  const TransferBookPage({super.key});

  @override
  State<TransferBookPage> createState() => _TransferBookPageState();
}

class _TransferBookPageState extends State<TransferBookPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: const Text('Page 3'),
    );
  }
}
