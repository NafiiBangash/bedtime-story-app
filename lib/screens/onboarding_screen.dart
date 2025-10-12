import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../widgets/onboarding_content.dart';
import 'auth/login_screen.dart';


class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int _pageIndex = 0;

  final List<Map<String, String>> onboardingData = [
    {
      "image": "assets/image 7 (5) (1) 1.png",
      "title": "Bedtime Stories For Kids",
      "subtitle": "A World of Award-Winning Bedtime Stories",
    },
    {
      "image": "assets/Group 21.png",
      "title": "Bedtime Stories For Kids",
      "subtitle": "A World of Award-Winning Bedtime Stories",
    },
    {
      "image": "assets/image 9 (11) (2) 1.png",
      "title": "Bedtime Stories For Kids",
      "subtitle": "A World of Award-Winning Bedtime Stories",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0B62C4),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/home.png'))
        ),
        child: Column(
          children: [
           SizedBox(height: 150),
            Expanded(
              child: PageView.builder(
                controller: _controller,
                itemCount: onboardingData.length,
                onPageChanged: (index) {
                  setState(() => _pageIndex = index);
                },
                itemBuilder: (context, index) => OnboardingContent(
                  image: onboardingData[index]["image"]!,
                  title: onboardingData[index]["title"]!,
                  subtitle: onboardingData[index]["subtitle"]!,
                  isLast: index == onboardingData.length - 1,
                  onNext: () {
                    if (index < onboardingData.length - 1) {
                      _controller.nextPage(
                        duration: const Duration(milliseconds: 300),
                        curve: Curves.easeIn,
                      );
                    }
                  },
                  controller: _controller,
                  count: onboardingData.length,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
