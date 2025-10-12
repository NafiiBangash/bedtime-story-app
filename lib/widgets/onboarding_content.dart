import 'package:bedtime_stories/screens/auth/login_screen.dart';
import 'package:bedtime_stories/screens/auth/signup_screen.dart';
import 'package:bedtime_stories/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingContent extends StatelessWidget {
  final String image, title, subtitle;
  final bool isLast;
  final VoidCallback onNext;
  final PageController controller;
  final int count;

  const OnboardingContent({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.isLast,
    required this.onNext,
    required this.controller,
    required this.count
  });

  @override
  Widget build(BuildContext context) {
    AppColors appColors = AppColors();
    return Column(
      children: [
        const SizedBox(height: 50),
        Image.asset(image, height: 200),
        const SizedBox(height: 40),
        Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 10),
        Text(
          subtitle,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
          ),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        // Smooth Page Indicator
        Padding(
          padding: const EdgeInsets.only(bottom: 20),
          child: SmoothPageIndicator(
            controller: controller,
            count: count,
            effect: WormEffect(
              dotHeight: 10,
              dotWidth: 10,
              activeDotColor: appColors.pageIndicatorColor,
              dotColor: Colors.white,
            ),
          ),
        ),
        const SizedBox(height: 30),
        isLast?
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> LoginScreen()));
                  },
                  child: SizedBox(
                    height: 56,
                    width: 129,
                    child: Image.asset('assets/login.png'),
                  ),
                ),
                InkWell(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (_)=> SignupScreen()));
                  },
                  child: SizedBox(
                    height: 56,
                    width: 129,
                    child: Image.asset('assets/signup.png'),
                  ),
                ),
              ],
            )
        :InkWell(
          onTap: onNext,
          child: SizedBox(
            height: 56,
            width: 129,
            child: Image.asset('assets/next.png'),
          ),
        ),
      ],
    );
  }
}
