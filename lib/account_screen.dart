import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        body: Center(child: Text("Account Page")),
        bottomNavigationBar: CustomBottomNavBar(currentIndex: 4));
  }
}
