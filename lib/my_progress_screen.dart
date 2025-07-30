
import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class MyProgressScreen extends StatelessWidget {
  const MyProgressScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text("my progress Page" , style: TextStyle(color: Colors.black),)),
        bottomNavigationBar: const CustomBottomNavBar(currentIndex: 2)


    );
  }
}