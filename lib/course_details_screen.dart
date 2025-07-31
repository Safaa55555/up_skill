import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:up_skill/widgets/section_title.dart';
//import 'widgets.dart'; // import your reusable text widgets here

class CourseDetailsScreen extends StatelessWidget {
  const CourseDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF7FAFC),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                onTap: () => Navigator.pop(context),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Icon(Icons.arrow_back, size: 28),
                ),
              ),
              Center(
                child: Image.asset(
                  'assets/images/react_banner.png',
                  width: 390,
                  height: 218,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 16),
              const SectionTitle('Mastering React: Build Dynamic Web Apps'),
              const SizedBox(height: 8),
              const BodyText(
                  'Learn React from scratch and build real-world applications '
                      'with this comprehensive course.. This course covers '
                      'the basics to advanced techniques, suitable for all skill levels.'),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                      width: 160,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEBEDF0),
                            foregroundColor: Colors.black,
                            elevation: 0,
                            side: BorderSide.none,
                          ),
                          child: Text(
                            "Read Text",
                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                            ),
                          ),
                          onPressed: () {})),
                  const SizedBox(width: 15),
                  SizedBox(
                      width: 160,
                      height: 40,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF0A75C2
                            ),
                            foregroundColor: Colors.black,
                            elevation: 0,
                            side: BorderSide.none,
                          ),
                          child: Text(
                            "Watch Videos",

                            style: GoogleFonts.lexend(
                              fontWeight: FontWeight.bold,
                              fontSize: 14,
                              color: Colors.white,
                            ),
                          ),
                          onPressed: () {})),
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle('About This Course'),
              const SizedBox(height: 8),
              const BodyText(
                  'Learn how to build fast, interactive, and modern web '
                      'applications using React, the world’s most popular'
                      ' front-end library. This course covers everything from'
                      ' the basics of components and JSX to advanced concepts '
                      'like hooks, state management, and routing. Perfect'
                      ' for beginners and intermediate developers who want '
                      'to master building dynamic user interfaces.'),
              const SizedBox(height: 24),
              const SectionTitle('Curriculum'),
              const SizedBox(height: 12),
              ...[
                ['Module 1', 'Getting Started with React'],
                ['Module 2', 'Working with Hooks and State'],
                ['Module 3', 'Routing and Advanced Features'],
                ['Module 4', 'Project: Building a Dynamic Web App'],
              ].map(
                    (item) => Padding(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item[0],
                        style: GoogleFonts.lexend(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(height: 2),
                      Text(
                        item[1],
                        style: GoogleFonts.lexend(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                            color: const Color(0xFF4A7A9C),

                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),
              const SectionTitle('Instructor'),
              const SizedBox(height: 8),
              Row(
                children: [
                  const CircleAvatar(
                      backgroundImage:
                          AssetImage('assets/images/instructor.png')),
                  const SizedBox(width: 12),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Safaa Abdelsalam',
                            style: lexendStyle(14, FontWeight.bold)),
                        const BodyText('Expert Frontend Engineer'),
                      ]),
                ],
              ),
              const SizedBox(height: 24),
              const SectionTitle('Reviews'),
              const SizedBox(height: 12),
              _buildReview(
                  'Hiba Yasir',
                  '2 months ago',
                  5,
                  'This course made '
                      'React feel so easy! I loved the way Safaa explained each concept...'),
              const SizedBox(height: 12),
              _buildReview('Huda Huda', '3 months ago', 4,
                  'Very informative and beginner-friendly...'),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildReview(String name, String time, int stars, String text) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [
          const CircleAvatar(
              backgroundImage: AssetImage('assets/images/reviewer_avatar.png')),
          const SizedBox(width: 12),
          Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(name, style: lexendStyle(14, FontWeight.bold)),
            Text(time, style: lexendStyle(12, FontWeight.w300)),
          ]),
        ]),
        const SizedBox(height: 8),
        Row(
            children: List.generate(
                5,
                (i) => Icon(Icons.star,
                    color: i < stars ? Colors.blue : Colors.grey, size: 20))),
        const SizedBox(height: 6),
        BodyText(text),
        const SizedBox(height: 8),
        Row(children: [
          Icon(Icons.thumb_up_alt_outlined, size: 16, color: Colors.grey[700]),
          const SizedBox(width: 4),
          Text('12', style: lexendStyle(12)),
          const SizedBox(width: 16),
          Icon(Icons.comment_outlined, size: 16, color: Colors.grey[700]),
          const SizedBox(width: 4),
          Text('2', style: lexendStyle(12)),
        ]),
      ],
    );
  }
}
