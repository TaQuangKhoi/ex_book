import 'package:flutter/material.dart';

class BuyBookPage extends StatefulWidget {
  const BuyBookPage({super.key});

  @override
  State<BuyBookPage> createState() => _BuyBookPageState();
}

class _BuyBookPageState extends State<BuyBookPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      alignment: Alignment.center,
      child: const Text('Page 2'),
    );
  }
}
