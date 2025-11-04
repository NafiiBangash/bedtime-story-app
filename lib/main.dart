import 'package:bedtime_stories/screens/auth/forget_password_screen.dart';
import 'package:bedtime_stories/screens/home/edit_profile_screen.dart';
import 'package:bedtime_stories/screens/home/network_error_screen.dart';
import 'package:bedtime_stories/screens/home/notification_screen.dart';
import 'package:bedtime_stories/screens/home/profile_screen.dart';
import 'package:bedtime_stories/screens/home/story_detail_screen.dart';
import 'package:bedtime_stories/screens/navigation_bar.dart';
import 'package:bedtime_stories/screens/auth/login_screen.dart';
import 'package:bedtime_stories/screens/onboarding_screen.dart';
import 'package:bedtime_stories/screens/auth/reset_password_screen.dart';
import 'package:bedtime_stories/screens/select_role_screen.dart';
import 'package:bedtime_stories/screens/auth/signup_screen.dart';
import 'package:bedtime_stories/screens/splash_screen.dart';
import 'package:flutter/material.dart' hide NavigationBar;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'BedTime Stories',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: Colors.white, width: 1), // 👈 white border
        ),
      ),
      home: const StoryDetailScreen(),
    );
  }
}
