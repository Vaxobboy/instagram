import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:super_animations/pages/sign_up_view/sign_up_view.dart';
import 'package:super_animations/pages/splash_view/succesful.dart';

class SignInView extends StatefulWidget {
  SignInView({super.key});

  @override
  State <SignInView> createState() => _SignInView();
}

class _SignInView extends State<SignInView> with TickerProviderStateMixin {
  final _key = GlobalKey<FormState>();
  late final AnimationController _controller;
  late final Animation<double> _animation;
  late final Animation<double> _animation2;
  late final Animation<double> _animation3;
  late final Animation<double> _animation4;
  late final AnimationController _controller2;

  late final AnimationController _controller3;
  late final AnimationController _controller4;
  final passwordController = TextEditingController();
  @override
  void initState() {
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    _controller2 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    _controller3 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    _controller4 = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2200),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
    _animation2 = Tween(begin: 0.0, end: 1.0).animate(_controller2);
    _animation3 = Tween(begin: 0.0, end: 1.0).animate(_controller3);
    _animation4 = Tween(begin: 0.0, end: 1.0).animate(_controller4);
    _controller.forward();
    _controller2.forward();
    _controller3.forward();
    _controller4.forward();
    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("SIGN IN"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          key: _key,
          child: Column(
            children: [
              
               SlideTransition(
              position: Tween(
                begin: const Offset(-8, -8),
                end: const Offset(0, 0),
              ).animate(_controller4),
              child: FadeTransition(
                opacity: _animation4,
                child: TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  label: const Text("Email"),
                  hintText: "example@gmail.com",
                ),
                validator: (value) {
                  var emailValid = RegExp(r"^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$");
                  if (!emailValid.hasMatch(value ?? "")) {
                    return "Wrong email!";
                  }
                  return null;
                },
              ),
              ),
               ),
              const SizedBox(height: 16),
                SlideTransition(
              position: Tween(
                begin: const Offset(8, 8),
                end: const Offset(0, 0),
              ).animate(_controller4),
              child: FadeTransition(
                opacity: _animation4,
                child:TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                  label: const Text("Password"),
                ),
                

                validator: (value) {
                  var passwordValid = RegExp(
                      r"^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$");
                  if (!passwordValid.hasMatch(value ?? "")) {
                    return "Invalid password";
                  }
                  return null;
                },)
              ),
                ),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  var result = _key.currentState?.validate() ?? false;
                  if (result) {
                    Navigator.pushReplacement(
                      context,
                      CupertinoPageRoute(
                        builder: (context) => const SplashView2(),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(double.maxFinite, 56),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
                child: const Text(
                  "LOGIN",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "You don't have an account?",
                    style: TextStyle(fontSize: 18),
                  ),
                  CupertinoButton(
                    padding: const EdgeInsets.all(8),
                    onPressed: () {
                      Navigator.push(
                        context,
                        CupertinoPageRoute(
                          builder: (context) => SignUpView(),
                        ),
                      );
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(color: Colors.blue.shade700),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
            ],
          ),
        ),
      ),
    );
  }
}
