import 'package:flutter/material.dart';
import 'package:up_skill/models/category.dart';

Category category_1 = Category('Web Development', 12, Icons.code);
Category category_2 = Category('Graphic Design', 8, Icons.edit);
Category category_3 = Category('Business', 15, Icons.business_center_outlined);
Category category_4 = Category('Marketing', 10, Icons.shop_2_outlined);
Category category_5 = Category('Photography', 7, Icons.camera_alt_outlined);
Category category_6 =
    Category('Music Production', 5, Icons.music_note_outlined);
Category category_7 = Category('Film Making', 6, Icons.movie_filter_outlined);
Category category_8 = Category('Language', 20, Icons.language);
Category defaultCategory =
    Category('Categoty Item', 12, Icons.category_outlined);

List<Category> categories = [
  category_1,
  category_2,
  category_3,
  category_4,
  category_5,
  category_6,
  category_7,
  category_8
];
