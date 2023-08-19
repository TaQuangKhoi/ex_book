import 'package:ex_book/pages/love_at_first_sight/introduction_page/main.dart';
import 'package:ex_book/pages/love_at_first_sight/log_in_page.dart';
import 'package:ex_book/pages/love_at_first_sight/sign_up_page.dart';
import 'package:ex_book/pages/love_at_first_sight/welcome_page.dart';
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
        pageTransitionsTheme: const PageTransitionsTheme(
          builders: {
            TargetPlatform.android: CupertinoPageTransitionsBuilder(),
          },
        ),
      ),
      routes: {
        '/welcome': (context) => const WelcomePage(),
        '/introduction': (context) => const IntroductionPage(),
        '/login': (context) => const LogInPage(),
        '/signup': (context) => const SignUpPage(),
      },
      home: const WelcomePage(),
    );
  }
}
