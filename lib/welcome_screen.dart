import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'widgets/app_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 60,     // here
            bottom: 15,  // here
            left: 24,
            right: 24,
          ),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16),
                child: Image.asset(
                  'assets/images/welcome.png',
                  //width: double.infinity,
                  width : 330,
                  height: 240,
                  fit:  BoxFit.contain, // Shows the whole image, keeps aspect ratio

                )


              ),
              const SizedBox(height: 24),
              Text(
                "Learn New Skills",
                style: GoogleFonts.lexend(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 8),
              Text(
                "Acquire in-demand skills to boost your career.",
                style: GoogleFonts.lexend(
                  fontSize: 16,
                  color: Colors.black,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 5),
              const Icon(Icons.more_horiz, size: 30, color: Colors.grey), // dots
              const Spacer(),
              AppButton(
                label: "Get Started",
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              AppButton(
                label: "Log In",
                backgroundColor: const Color(0xFFE8EDF5),
                textColor:  Colors.black,
                onPressed: () {},
              ),
              const SizedBox(height: 12),
              TextButton(
                onPressed: () {
                  // Handle guest entry
                },
                child: Text(
                  "Enter as Guest",
                  style: GoogleFonts.lexend(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.underline, 
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


