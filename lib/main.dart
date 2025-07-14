import 'package:flutter/material.dart';
import 'screens/splash_screen.dart';
import 'screens/role_selection_screen.dart';
import 'screens/teacher/teacher_signup_screen.dart';
import 'screens/teacher/teacher_login_screen.dart';
import 'screens/student/student_signup_screen.dart';
import 'screens/student/student_home/courses_screen.dart';
import 'screens/student/student_home/subjects_screen.dart';
import 'screens/student/student_home/chapters_screen.dart';
import 'screens/student/student_home/content_screen.dart';
import 'screens/teacher/teacher_home/teacher_courses_screen.dart';
import 'screens/teacher/teacher_home/teacher_subjects_screen.dart';
import 'screens/teacher/teacher_home/teacher_chapters_screen.dart';
import 'screens/teacher/teacher_home/teacher_content_screen.dart';

void main() {
  runApp(const CoachingApp());
}

class CoachingApp extends StatelessWidget {
  const CoachingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Coaching Class App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: const TextTheme(bodyMedium: TextStyle(fontSize: 16)),
      ),
      initialRoute: '/splash',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case '/splash':
            return MaterialPageRoute(builder: (_) => const SplashScreen());
          case '/role-selection':
            return MaterialPageRoute(
              builder: (_) => const RoleSelectionScreen(),
            );
          case '/teacher-signup':
            return MaterialPageRoute(
              builder: (_) => const TeacherSignupScreen(),
            );
          case '/teacher-login':
            return MaterialPageRoute(
              builder: (_) => const TeacherLoginScreen(),
            );
          case '/student-signup':
            return MaterialPageRoute(
              builder: (_) => const StudentSignupScreen(),
            );
          case '/courses':
            return MaterialPageRoute(builder: (_) => const CoursesScreen());
          case '/subjects':
            final course = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => SubjectsScreen(course: course),
            );
          case '/chapters':
            final subject = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => ChaptersScreen(subject: subject),
            );
          case '/content':
            final chapter = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => ContentScreen(chapter: chapter),
            );
          case '/teacher-courses':
            return MaterialPageRoute(
              builder: (_) => const TeacherCoursesScreen(),
            );
          case '/teacher-subjects':
            final course = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => TeacherSubjectsScreen(course: course),
            );
          case '/teacher-chapters':
            final subject = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => TeacherChaptersScreen(subject: subject),
            );
          case '/teacher-content':
            final chapter = settings.arguments as String;
            return MaterialPageRoute(
              builder: (_) => TeacherContentScreen(chapter: chapter),
            );
          default:
            return MaterialPageRoute(builder: (_) => const SplashScreen());
        }
      },
    );
  }
}
