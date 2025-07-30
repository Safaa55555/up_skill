import 'package:flutter/material.dart';
import 'package:up_skill/constants.dart';
import 'package:up_skill/models/category.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key, required this.category});

  final Category category;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
      decoration: BoxDecoration(
        border: Border.all(color: mainColor),
        borderRadius: BorderRadius.circular(15),
      ),
      width: MediaQuery.of(context).size.width * 0.4,
      height: MediaQuery.of(context).size.width * 0.2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(category.icon),
          Text(
            category.name,
            style: const TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            "${category.coursesNumber} courses",
            style: TextStyle(color: mainColor),
          )
        ],
      ),
    );
  }
}
