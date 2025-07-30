import 'package:flutter/material.dart';
import 'package:up_skill/data.dart';
import 'package:up_skill/widgets/category_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(
            child: Text("Categories       ",
                style: TextStyle(fontWeight: FontWeight.bold))),
        leading: const Icon(Icons.arrow_back),
      ),
      body: GridView.count(
          padding: const EdgeInsets.all(15),
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 5,
          childAspectRatio: 02,
          children: categories.map((category) {
            return CategoryItem(category: category);
          }).toList()),
    );
  }
}
