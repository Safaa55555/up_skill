import 'package:flutter/material.dart';

class LearningHubScreen extends StatelessWidget {
  const LearningHubScreen({super.key});

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
            CourseHorizontalList(
              courses: [
                Course("Arabic for Beginners", "Layla Hassan"),
                Course("English Grammar Essentials", "Ethan Carter"),
                Course("Advanced Calculus", "Dr. Omar Farouk"),
              ],
            ),
            const SizedBox(height: 24),
            const SectionTitle(title: 'Recommended for You'),
            const SizedBox(height: 8),
            CourseHorizontalList(
              courses: [
                Course("Digital Marketing Mastery", "Sophia Al-Mousa"),
                Course("Creative Writing Workshop", "Jamal Al-Din"),
                Course("Data Science Fundamentals", "Aaliyah Khan"),
              ],
            ),
            const SizedBox(height: 24),
            const SectionTitle(title: 'New Arrivals'),
            const SizedBox(height: 8),
            CourseHorizontalList(
              courses: [
                Course("Cybersecurity Intro", "Rami Al-Khalid"),
                Course("Photography Basics", "Isabella Rossi"),
                Course("Spanish for Travel", "Javier Rodríguez"),
              ],
            ),
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
  Course(this.title, this.instructor);
}

class CourseHorizontalList extends StatelessWidget {
  final List<Course> courses;

  const CourseHorizontalList({required this.courses, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 160,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: courses.length,
        separatorBuilder: (context, _) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          final course = courses[index];
          return Container(
            width: 140,
            decoration: BoxDecoration(
              color: Colors.orange[100],
              borderRadius: BorderRadius.circular(12),
            ),
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orange[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child:
                        const Icon(Icons.book, size: 40, color: Colors.white),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  course.title,
                  style: const TextStyle(fontWeight: FontWeight.bold),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  "Instructor: ${course.instructor}",
                  style: const TextStyle(fontSize: 12, color: Colors.grey),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
