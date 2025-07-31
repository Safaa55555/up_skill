import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(child: Text("Home Page")),
        bottomNavigationBar: CustomBottomNavBar(currentIndex: 0));
  }
}
