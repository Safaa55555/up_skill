import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_skill/welcome_screen.dart';
import 'widgets/app_button.dart';
import 'widgets/app_text_field.dart';
import 'sign_in_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.topLeft,
                  child: Icon(Icons.close), // Close icon
                ),
                const SizedBox(height: 12),
                Center(
                  child: Text(
                    "Create New Account",
                    style: GoogleFonts.lexend(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ),
                const SizedBox(height: 24),
                Text("Full Name",
                    style: GoogleFonts.lexend(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                const AppTextField(hintText: "Enter your full name"),
                const SizedBox(height: 16),
                Text("Email Address",
                    style: GoogleFonts.lexend(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                const AppTextField(hintText: "Enter your email"),
                const SizedBox(height: 16),
                Text("Password",
                    style: GoogleFonts.lexend(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                const AppTextField(
                  hintText: "Enter your password",
                  isPassword: true,
                  suffixIcon:
                      Icon(Icons.visibility_outlined, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                Text("Confirm Password",
                    style: GoogleFonts.lexend(fontWeight: FontWeight.w600)),
                const SizedBox(height: 8),
                const AppTextField(
                    hintText: "Confirm your password", isPassword: true),
                const SizedBox(height: 24),
                AppButton(
                  label: "Sign Up",
                  onPressed: () {
                    Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomeScreen()));
                  },
                ),
                const SizedBox(height: 12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account? ",
                      style: GoogleFonts.lexend(color: Colors.black),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignInScreen()),
                        );
                      },
                      child: Text(
                        "Log In",
                        style: GoogleFonts.lexend(
                          fontWeight: FontWeight.bold,
                          color: const Color(0xFF0A7DD9),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 24),
                AppButton(
                  label: "Sign up with Google",
                  backgroundColor: const Color(0xFFE8EDF5),
                  textColor: Colors.black,
                  onPressed: () {},
                ),
                const SizedBox(height: 12),
                AppButton(
                  label: "Sign up with Apple",
                  backgroundColor: const Color(0xFFE8EDF5),
                  textColor: Colors.black,
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
