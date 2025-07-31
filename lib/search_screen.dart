
import 'package:flutter/material.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: Text("Search Page" , style: TextStyle(color: Colors.black),))
    , bottomNavigationBar: CustomBottomNavBar(currentIndex: 3));
  }
}