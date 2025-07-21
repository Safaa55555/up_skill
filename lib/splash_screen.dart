import 'package:flutter/material.dart';
class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

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
