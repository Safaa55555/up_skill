import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: const Center(child: Text("Cateogories Page")),

                     bottomNavigationBar: const CustomBottomNavBar(currentIndex: 1),);
  }
}


