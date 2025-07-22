import 'package:flutter/material.dart';
import 'package:up_skill/language_screen.dart';
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}
class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LanguageScreen()),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Row(
      children: [
        Text("UpSkill", style: TextStyle(),),
        Icon(Icons.arrow_upward)
      ],
    ));
  }
}



