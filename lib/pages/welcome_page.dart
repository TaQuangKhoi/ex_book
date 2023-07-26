import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return const Scaffold(
        backgroundColor: Color(0xFFF1F9EA),
        appBar: null,
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Ex.Book',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF074E16),
                    fontSize: 64,
                    fontFamily: 'Mulish',
                    // fontWeight: FontWeight.w700,
                    // height: 36,
                  )),
              Text('Nơi trao đổi và mua sách cũ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xFF293731),
                    // fontSize: 16,
                    // fontFamily: 'Mulish',
                    // fontWeight: FontWeight.w500,
                    // height: 36,
                  ))
            ],
          ),
        ));
  }
}