import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:super_animations/pages/splash_view/lotties_splash_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
        textTheme: GoogleFonts.alegreyaSansTextTheme(),
      ),
      home: const SplashView(),
    );
  }
}

