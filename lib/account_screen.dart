import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text("Account Page")),
        bottomNavigationBar: const CustomBottomNavBar(currentIndex: 4));
  }
}