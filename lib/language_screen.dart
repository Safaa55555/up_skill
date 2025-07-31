import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_skill/widgets/app_button.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32.0, vertical: 24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Spacer(),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text("Choose Your Language",
                      textAlign: TextAlign.center,
                      style: GoogleFonts.lexend(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      )),
                  const SizedBox(height: 70),
                  AppButton(
                    label: "English",
                    onPressed: () {
                      // TODO: navigate or select language
                    },
                  ),
                  const SizedBox(height: 12),
                  AppButton(
                    label: "العربية",
                    onPressed: () {
                      // TODO: navigate or select language
                    },
                  ),
                ],
              ),
              const Spacer(flex: 2),
            ],
          ),
        ),
      ),
    );
  }
}
