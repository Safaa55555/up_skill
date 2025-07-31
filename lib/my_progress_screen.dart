import 'package:flutter/material.dart';

class MyProgressScreen extends StatelessWidget {
  final List<Course> courses = [
    Course(
      title: 'JavaScript Essentials',
      subtitle: 'For Beginners',
      progress: 0.30,
      imagePath: 'assets/js.png',
    ),
    Course(
      title: 'English Grammar',
      subtitle: 'English Grammar Essentials',
      progress: 0.75,
      imagePath: 'assets/grammar.png',
    ),
    Course(
      title: 'Write your CV',
      subtitle: 'For Beginners',
      progress: 0.10,
      imagePath: 'assets/cv.png',
    ),
  ];

  MyProgressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double overallProgress =
        courses.map((c) => c.progress).reduce((a, b) => a + b) / courses.length;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text('My Progress', style: TextStyle(color: Colors.black)),
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text('Overall Progress',
                style: TextStyle(fontWeight: FontWeight.bold)),
            const SizedBox(height: 8),
            LinearProgressIndicator(
              value: overallProgress,
              backgroundColor: Colors.grey[300],
              color: Colors.blue,
            ),
            const SizedBox(height: 4),
            Text('${(overallProgress * 100).toInt()}%',
                style: TextStyle(color: Colors.grey[700])),
            const SizedBox(height: 24),
            const Text('My Courses',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.builder(
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  final course = courses[index];
                  return CourseItem(course: course);
                },
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.black,
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.list), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.mail), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),
    );
  }
}

class Course {
  final String title;
  final String subtitle;
  final double progress;
  final String imagePath;

  Course({
    required this.title,
    required this.subtitle,
    required this.progress,
    required this.imagePath,
  });
}

class CourseItem extends StatelessWidget {
  final Course course;

  const CourseItem({super.key, required this.course});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        children: [
          Image.asset(
            course.imagePath,
            height: 50,
            width: 50,
            fit: BoxFit.cover,
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(course.title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(course.subtitle,
                    style: TextStyle(color: Colors.grey[600], fontSize: 12)),
                const SizedBox(height: 6),
                LinearProgressIndicator(
                  value: course.progress,
                  backgroundColor: Colors.grey[300],
                  color: Colors.blue,
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Text('${(course.progress * 100).toInt()}%'),
        ],
      ),
    );
  }
}
