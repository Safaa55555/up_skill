import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool isPassword; // changed
  final Widget? suffixIcon;

  const AppTextField({
    super.key,
    required this.hintText,
    this.isPassword = false, // changed
    this.suffixIcon,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: isPassword, // changed
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: GoogleFonts.lexend(color: Colors.grey),
        filled: true,
        fillColor: const Color(0xFFE8EDF5),
        contentPadding: const EdgeInsets.symmetric(vertical: 14, horizontal: 16),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
          borderSide: BorderSide.none,
        ),
        suffixIcon: suffixIcon,
      ),
      style: GoogleFonts.lexend(
        fontSize: 14,
        color: Colors.black,
      ),
    );
  }
}

