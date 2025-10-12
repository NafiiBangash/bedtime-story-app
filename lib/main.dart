import 'package:bedtime_stories/screens/forget_password_screen.dart';
import 'package:bedtime_stories/screens/navigation_bar.dart';
import 'package:bedtime_stories/screens/login_screen.dart';
import 'package:bedtime_stories/screens/login_with_mail_screen.dart';
import 'package:bedtime_stories/screens/onboarding_screen.dart';
import 'package:bedtime_stories/screens/reset_password_screen.dart';
import 'package:bedtime_stories/screens/reset_success_screen.dart';
import 'package:bedtime_stories/screens/select_role_screen.dart';
import 'package:bedtime_stories/screens/signup_screen.dart';
import 'package:bedtime_stories/screens/signup_with_mail.dart';
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
      home: const NavigationBar(),
    );
  }
}
