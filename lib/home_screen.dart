import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: HomeScreen(),
  ));
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'LearnHub',
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Icon(Icons.search),
              ],
            ),
            const SizedBox(height: 16),
            const SearchBar(),
            const SizedBox(height: 24),

            const SectionTitle(title: 'Continue Learning'),
            const SizedBox(height: 8),
            CourseHorizontalList(courses: [
              Course("Arabic for Beginners", "Layla Hassan", "assets/arabic.png"),
              Course("English Grammar Essentials", "Ethan Carter", "assets/english.png"),
              Course("Advanced Calculus", "Dr. Omar Farouk", "assets/calculus.png"),
            ]),

            const SizedBox(height: 24),
            const SectionTitle(title: 'Recommended for You'),
            const SizedBox(height: 8),
            CourseHorizontalList(courses: [
              Course("Digital Marketing Mastery", "Sophia Al-Mousa", "assets/marketing.png"),
              Course("Creative Writing Workshop", "Jamal Al-Din", "assets/creative_writing.png"),
              Course("Data Science Fundamentals", "Aaliyah Khan", "assets/data_science.png"),
            ]),

            const SizedBox(height: 24),
            const SectionTitle(title: 'New Arrivals'),
            const SizedBox(height: 8),
            CourseHorizontalList(courses: [
              Course("Introduction to Cybersecurity", "Rami Al-Khalid", "assets/cybersecurity.png"),
              Course("Photography Basics", "Isabella Rossi", "assets/photography.png"),
              Course("Spanish for Travel", "Javier Rodríguez", "assets/spanish.png"),
            ]),

            const SizedBox(height: 24),
            const SectionTitle(title: 'Popular Courses'),
            const SizedBox(height: 8),
            CourseHorizontalList(courses: [
              Course("Project Management", "Nadia Al-Sayed", "assets/project_mgmt.png"),
              Course("Graphic Design Principles", "Marco Bianchi", "assets/graphic_design.png"),
              Course("French Conversation", "Camille Dubois", "assets/french.png"),
            ]),
          ],
        ),
      ),
    );
  }
}

class SearchBar extends StatelessWidget {
  const SearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search courses',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
        filled: true,
        fillColor: Colors.grey[200],
      ),
    );
  }
}

class SectionTitle extends StatelessWidget {
  final String title;
  const SectionTitle({required this.title, super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
    );
  }
}

class Course {
  final String title;
  final String instructor;
  final String imageAsset;

  Course(this.title, this.instructor, this.imageAsset);
}

class CourseHorizontalList extends StatelessWidget {
  final List<Course> courses;
  const CourseHorizontalList({required this.courses, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200, // Increased height to fix overflow
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final course = courses[index];
          return Container(
            width: 160,
            decoration: BoxDecoration(
              color: const Color(0xFFFDF5EF),
              borderRadius: BorderRadius.circular(16),
              boxShadow: const [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 4,
                  offset: Offset(2, 2),
                )
              ],
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Image.asset(
                    course.imageAsset,
                    width: double.infinity,
                    height: 80,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      return Container(
                        color: Colors.grey[300],
                        height: 80,
                        alignment: Alignment.center,
                        child: const Icon(Icons.broken_image, size: 32),
                      );
                    },
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  course.title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4),
                Text(
                  "Instructor: ${course.instructor}",
                  style: const TextStyle(
                    fontSize: 12,
                    color: Colors.grey,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
