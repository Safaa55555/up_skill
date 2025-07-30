import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text("Home Page")),
        bottomNavigationBar: const CustomBottomNavBar(currentIndex: 0));
  }
}

