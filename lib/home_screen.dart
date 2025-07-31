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
            const SizedBox(height: 12),
            CourseGridList(courses: [
              Course("Arabic for Beginners", "Layla Hassan", "assets/arabic.png"),
              Course("English Grammar Essentials", "Ethan Carter", "assets/english.png"),
              Course("Advanced Calculus", "Dr. Omar Farouk", "assets/calculus.png"),
            ]),
            const SizedBox(height: 24),
            const SectionTitle(title: 'Recommended for You'),
            const SizedBox(height: 12),
            CourseGridList(courses: [
              Course("Digital Marketing Mastery", "Sophia Al-Mousa", "assets/marketing.png"),
              Course("Creative Writing Workshop", "Jamal Al-Din", "assets/creative_writing.png"),
              Course("Data Science Fundamentals", "Aaliyah Khan", "assets/data_science.png"),
            ]),
            const SizedBox(height: 24),
            const SectionTitle(title: 'New Arrivals'),
            const SizedBox(height: 12),
            CourseGridList(courses: [
              Course("Introduction to Cybersecurity", "Rami Al-Khalid", "assets/cybersecurity.png"),
              Course("Photography Basics", "Isabella Rossi", "assets/photography.png"),
              Course("Spanish for Travel", "Javier Rodríguez", "assets/spanish.png"),
            ]),
            const SizedBox(height: 24),
            const SectionTitle(title: 'Popular Courses'),
            const SizedBox(height: 12),
            CourseGridList(courses: [
              Course("Project Management Professional", "Nadia Al-Sayed", "assets/project_mgmt.png"),
              Course("Graphic Design Principles", "Marco Bianchi", "assets/graphic_design.png"),
              Course("French Conversation Practice", "Camille Dubois", "assets/french.png"),
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
  final String image;
  Course(this.title, this.instructor, this.image);
}

class CourseGridList extends StatelessWidget {
  final List<Course> courses;

  const CourseGridList({required this.courses, super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      mainAxisSpacing: 12,
      crossAxisSpacing: 12,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 0.8,
      children: courses.map((course) {
        return Container(
          decoration: BoxDecoration(
            color: const Color(0xFFFFF6ED),
            borderRadius: BorderRadius.circular(12),
          ),
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: Image.asset(
                    course.image,
                    fit: BoxFit.cover,
                    width: double.infinity,
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Text(
                course.title,
                style: const TextStyle(fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: 4),
              Text(
                "Instructor: ${course.instructor}",
                style: const TextStyle(fontSize: 12, color: Colors.grey),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
