import 'package:flutter/material.dart';
import 'welcome_screen.dart';
import 'marhaba_screen.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  void _navigateTo(BuildContext context, String languageCode) {
    if (languageCode == 'en') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const WelcomeScreen()),
      );
    } else if (languageCode == 'ar') {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const MarhabaScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              "Choose Your Language",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 24),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              onPressed: () => _navigateTo(context, 'en'),
              child: const Text("English"),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            child: ElevatedButton(
              onPressed: () => _navigateTo(context, 'ar'),
              child: const Text("Arabic"),
            ),
          ),
        ],
      ),
    );
  }
}
