import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});
  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsetsGeometry.all(24),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: 242,
                height: 105,
                child: Column(
                  children: [
                    Text(
                      "You AI Assistant",
                      style: TextStyle(
                        color: Color(0xff3369FF),
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      "Using this software,you can ask you questions and receive articles using artificial intelligence assistant",
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              Image.asset("assets/Frame.png", width: 320, height: 324),
              InkWell(
                onTap: () {
                  context.push('/home');
                },
                child: Container(
                  width: 333,
                  height: 56,
                  decoration: BoxDecoration(
                    color: Color(0xff3369FF),
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Center(
                    child: Text(
                      "Continue",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 19,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
