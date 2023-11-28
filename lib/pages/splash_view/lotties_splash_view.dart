import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:super_animations/pages/sign_in_view/sign_in_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) =>  SignInView(),
        ),
      );
    },);
    super.initState();
  }
  // textTheme: GoogleFonts.alegreyaSansTextTheme(), <- main uchun lottie
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset("assets/anim/insta.json"),
            const SizedBox(height: 8),
            const Text(
              "Instagram",
              style: TextStyle(
                fontSize: 28,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
