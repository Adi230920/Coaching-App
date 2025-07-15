import 'package:flutter/material.dart';

class TeacherChaptersScreen extends StatelessWidget {
  final String subject;
  const TeacherChaptersScreen({super.key, required this.subject});

  @override
  Widget build(BuildContext context) {
    final List<String> chapters = [
      'Chapter 1',
      'Chapter 2',
      'Chapter 3',
      'Chapter 4',
      'Chapter 5',
    ];

    return Scaffold(
      appBar: AppBar(title: Text('$subject Chapters')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Manage Chapters',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            Expanded(
              child: ListView.separated(
                itemCount: chapters.length,
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 12),
                itemBuilder: (context, index) =>
                    _buildChapterCard(context, chapters[index]),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: _buildBottomNavBar(context, 2),
    );
  }

  Widget _buildChapterCard(BuildContext context, String chapterName) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(
          context,
          '/teacher-content',
          arguments: chapterName,
        );
      },
      child: Card(
        color: Colors.deepPurple.shade400.withOpacity(0.9),
        elevation: 5,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24.0),
          child: Center(
            child: Text(
              chapterName,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.white,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildBottomNavBar(BuildContext context, int currentIndex) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      selectedItemColor: Colors.blueAccent,
      unselectedItemColor: Colors.grey,
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.book), label: 'Courses'),
        BottomNavigationBarItem(icon: Icon(Icons.subject), label: 'Subjects'),
        BottomNavigationBarItem(icon: Icon(Icons.list), label: 'Chapters'),
        BottomNavigationBarItem(
          icon: Icon(Icons.content_paste),
          label: 'Content',
        ),
      ],
      onTap: (index) {
        switch (index) {
          case 0:
            Navigator.pushNamed(context, '/teacher-courses');
            break;
          case 1:
            Navigator.pushNamed(
              context,
              '/teacher-subjects',
              arguments: '8th Std ICSE',
            );
            break;
          case 2:
            Navigator.pushNamed(
              context,
              '/teacher-chapters',
              arguments: 'Physics',
            );
            break;
          case 3:
            Navigator.pushNamed(
              context,
              '/teacher-content',
              arguments: 'Chapter 1',
            );
            break;
        }
      },
    );
  }
}
