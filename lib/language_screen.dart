import 'package:flutter/material.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Text("Choose Your Language"),
          ElevatedButton(onPressed: () {}, child: const Text("English")),
          ElevatedButton(onPressed: () {}, child: const Text("Arabic"))
        ],
      ),
    );
  }
}
