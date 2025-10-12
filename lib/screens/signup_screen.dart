// ignore_for_file: deprecated_member_use

import 'package:bedtime_stories/utils/app_colors.dart';
import 'package:bedtime_stories/widgets/top_bar.dart';
import 'package:flutter/material.dart';

import '../widgets/option_button.dart';
import 'signup_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors();
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            // Top bar
            TopBar(title: 'Sign up'),

            const SizedBox(height: 40),

            // Stylish container with overlayed buttons
            Stack(
              alignment: Alignment.center,
              children: [
                // Background stylish box
                Image.asset(
                  'assets/images/stylish-box.png',
                  height: MediaQuery.of(context).size.height * 0.6,
                  width: 267,
                ),

                // Buttons on top of the image
                Positioned(
                  bottom: 100,
                  child: SizedBox(
                    width: 199,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        OptionButton(
                          color: appColors.appleBtnColor,
                          title: 'Login With Apple',
                          iconUrl: 'assets/icons/apple.png',
                          onTap: () {},
                        ),
                        const SizedBox(height: 16),
                        OptionButton(
                          color: appColors.fbBtnColor,
                          title: 'Login With Facebook',
                          iconUrl: 'assets/icons/fb.png',
                          onTap: () {},
                        ),
                        const SizedBox(height: 16),
                        OptionButton(
                          color: appColors.googleBtnColor,
                          title: 'Login With Google',
                          iconUrl: 'assets/icons/google.png',
                          onTap: () {},
                        ),
                        const SizedBox(height: 16),
                        OptionButton(
                          color: Colors.white,
                          title: 'Login With Mail',
                          iconUrl: 'assets/icons/google.png',
                          titleColor: Colors.black,
                          onTap: () {},
                        ),
                        const SizedBox(height: 24),
                        GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (_) => const SignupScreen(),
                                ),
                              );
                            },
                            child: RichText(
                              text: TextSpan(
                                style: const TextStyle(fontSize: 12, color: Colors.white), // default style
                                children: [
                                  const TextSpan(text: "Don’t have an account? ",),
                                  TextSpan(
                                    text: "Login now", // different color
                                    style:  TextStyle(
                                      color: appColors.pageIndicatorColor,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            )

                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
