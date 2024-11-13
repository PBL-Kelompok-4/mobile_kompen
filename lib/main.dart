import 'package:flutter/material.dart';
import 'package:sistem_kompen_app/features/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Sistem Kompen Polinema',
      theme: ThemeData(
        useMaterial3: false,
      ),
      home: const SplashPage(),
    );
  }
}
