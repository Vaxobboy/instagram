import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:super_animations/pages/home/home.dart';


class SplashView2 extends StatefulWidget {
  const SplashView2({super.key});

  @override
  State<SplashView2> createState() => _SplashView2State();
}

class _SplashView2State extends State<SplashView2> {
  @override
  void initState() {

    Future.delayed(const Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        CupertinoPageRoute(
          builder: (context) =>  HomeView(),
        ),
      );
    });
    super.initState();
  }
  // textTheme: GoogleFonts.alegreyaSansTextTheme(), <- main uchun lottie
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
          
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Lottie.asset("assets/anim/nice.json"),
            const SizedBox(height: 8),
            const Text(
                  "Successful",
                  style: TextStyle(
                    fontSize: 28,
                  ),
                ),
              ],
            )
        ),
    );
  }
}
