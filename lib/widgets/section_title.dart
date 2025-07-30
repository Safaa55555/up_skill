import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle lexendStyle(double size, [FontWeight weight = FontWeight.normal]) =>
    GoogleFonts.lexend(fontSize: size, fontWeight: weight);

class SectionTitle extends StatelessWidget {
  final String text;
  const SectionTitle(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(text, style: lexendStyle(20, FontWeight.bold));
  }
}

class BodyText extends StatelessWidget {
  final String text;
  const BodyText(this.text, {super.key});
  @override
  Widget build(BuildContext context) {
    return Text(text, style: lexendStyle(16).copyWith(color: Colors.black) );
  }
}
