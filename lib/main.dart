import 'package:flutter/material.dart';
import 'package:up_skill/categories_screen.dart';
import 'package:up_skill/language_screen.dart';
import 'package:up_skill/my_progress_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home:  MyProgressScreen( ),
    );
  }
}


