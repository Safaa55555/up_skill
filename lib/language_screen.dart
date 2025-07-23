import 'package:flutter/material.dart';
class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text("Choose Your Language"),
        ElevatedButton(onPressed: (){}, child: Text("English")),
        ElevatedButton(onPressed: (){}, child: Text("Arabic"))
      ],),);
  }
}
