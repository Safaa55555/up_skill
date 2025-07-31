import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_skill/widgets/custom_bottom_nav_bar.dart';

//we should import category screen too
class CoursesScreen extends StatelessWidget {
  const CoursesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        textTheme: GoogleFonts.lexendTextTheme(
          Theme.of(context).textTheme,
        ),
      ),
      child: Scaffold(
          backgroundColor: Color(0xFFF7FAFC),
          body: SafeArea(
              child: SingleChildScrollView(
                  child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0, vertical: 20),
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  // Back button aligned to left
                  Align(
                    alignment: Alignment.centerLeft,
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => Navigator.pop(context),
                    ),
                  ),

                  // Centered title text
                  Text(
                    "Web Development Courses",
                    style: GoogleFonts.lexend(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEBEDF0),
                      foregroundColor: Colors.black,
                      elevation: 0,
                      side: BorderSide.none,
                    ),
                    child: Text(
                      "Beginner",
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {}),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEBEDF0),
                      foregroundColor: Colors.black,
                      elevation: 0,
                      side: BorderSide.none,
                    ),
                    child: Text(
                      "Intermediate",
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {}),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFEBEDF0),
                      foregroundColor: Colors.black,
                      elevation: 0,
                      side: BorderSide.none,
                    ),
                    child: Text(
                      "Advanced",
                      style: GoogleFonts.lexend(
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                    onPressed: () {}),
              ]),
              const SizedBox(
                height: 20,
              ),
              const CourseCard(
                label: "Course",
                title: "Mastering React: Build Dynamic Web Apps",
                description:
                    "Learn React from scratch and build real-world applications with this comprehensive course.",
                imagePath: 'assets/images/react.png',
              ),
              const SizedBox(
                height: 35,
              ),
              const CourseCard(
                label: "Course",
                title: "JavaScript Essentials: From Zero to Hero",
                description: "A complete guide to JavaScript, "
                    "covering all the fundamentals and advanced concepts.",
                imagePath: 'assets/images/java.png',
              ),
              const SizedBox(
                height: 35,
              ),
              const CourseCard(
                label: "Course",
                title: "HTML & CSS: The Building Blocks of the Web",
                description: "Learn the basics of HTML and CSS to create"
                    " beautiful and responsive web pages.",
                imagePath: 'assets/images/html.png',
              ),
            ]),
          )))
          // bottomNavigationBar: const CustomBottomNavBar(currentIndex: 1),

          ),
    );
  }
}

//reusable widget
class CourseCard extends StatelessWidget {
  final String label;
  final String title;
  final String description;
  final String imagePath;

  const CourseCard({
    super.key,
    required this.label,
    required this.title,
    required this.description,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                label,
                style: const TextStyle(
                  color: Color(0xFF617585),
                  fontSize: 14,
                ),
              ),
              Text(
                title,
                style: const TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(description),
            ],
          ),
        ),
        Image.asset(
          imagePath,
          width: 127,
          height: 127,
          fit: BoxFit.cover,
        ),
      ],
    );
  }
}
