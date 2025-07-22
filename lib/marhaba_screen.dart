import 'package:flutter/material.dart';

class MarhabaScreen extends StatelessWidget {
  const MarhabaScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          "مرحبا!",
          style: TextStyle(fontSize: 28),
          textDirection: TextDirection.rtl,
        ),
      ),
    );
  }
}
