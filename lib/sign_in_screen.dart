import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_skill/welcome_screen.dart';
import 'widgets/app_button.dart';
import 'widgets/app_text_field.dart';
import 'sign_up_screen.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Back arrow
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () => Navigator.pop(context),
              ),

              const SizedBox(height: 10),

              // Title
              Center(
                child: Text(
                  "Log In",
                  style: GoogleFonts.lexend(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // Email field
              Text(
                "Email Address",
                style: GoogleFonts.lexend(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const AppTextField(hintText: "Enter your email"),

              const SizedBox(height: 20),

              // Password field
              Text(
                "Password",
                style: GoogleFonts.lexend(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              const AppTextField(
                hintText: "Enter your password",
                isPassword: true,
                suffixIcon: Icon(Icons.visibility_outlined, color: Colors.grey),
              ),

              const SizedBox(height: 8),

              // Forgot Password
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {},
                  child: Text(
                    "Forgot Password?",
                    style: GoogleFonts.lexend(
                      color: const Color(0xFF0A7DD9),
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 12),

              // Log In button
              AppButton(
                label: "Log In",
                onPressed: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const WelcomeScreen()));
                },
              ),

              const SizedBox(height: 12),

              // Sign up text
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text("Don't have an account? ",
                      style: GoogleFonts.lexend(color: Colors.black)),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignUpScreen()),
                      );
                    },
                    child: Text(
                      "Sign Up",
                      style: GoogleFonts.lexend(
                        color: const Color(0xFF0A7DD9),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Or log in with
              Center(
                child: Text(
                  "Or log in with",
                  style: GoogleFonts.lexend(fontWeight: FontWeight.w500),
                ),
              ),
              const SizedBox(height: 12),

              // Google / Apple Buttons
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: AppButton(
                      label: "Log in with Google",
                      backgroundColor: const Color(0xFFE8EDF5),
                      textColor: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                  const SizedBox(width: 12),
                  Expanded(
                    child: AppButton(
                      label: "Log in with Apple",
                      backgroundColor: const Color(0xFFE8EDF5),
                      textColor: Colors.black,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
