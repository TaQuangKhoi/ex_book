import 'package:ex_book/pages/create_account/introduction_page.dart';
import 'package:ex_book/pages/welcome_page.dart';
import 'package:flutter/material.dart';

class ExBookApp extends StatefulWidget {
  const ExBookApp({super.key});

  @override
  State<ExBookApp> createState() => _ExBookAppState();
}

class _ExBookAppState extends State<ExBookApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ex. Book',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routes: {
        // '/': (context) => const MyHomePage(),
        '/introduction': (context) => const NgNhP(),
      },
      home: const MyHomePage(),
    );
  }
}
