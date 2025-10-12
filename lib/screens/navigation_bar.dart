import 'package:bedtime_stories/utils/app_colors.dart';
import 'package:flutter/material.dart';

import 'home/home_screen.dart';

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar> {
  final screens =[
    HomeScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors();
    return Scaffold(
      backgroundColor: appColors.bckgrdColor,
      body: screens[0],
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(8),
          topRight: Radius.circular(8),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: appColors.bnrColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.white54,
          items: [
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 30,
                child: Image.asset('assets/icons/home-s.png', height: 30),
              ),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 30,
                child: Center(child: Image.asset('assets/icons/book.png', height: 22)),
              ),
              label: "Favourites",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 30,
                child: Center(child: Image.asset('assets/icons/user-_3_ 1.png', height: 22)),
              ),
              label: "Profile",
            ),
            BottomNavigationBarItem(
              icon: SizedBox(
                height: 30,
                child: Center(child: Image.asset('assets/icons/setting-2.png', height: 22)),
              ),
              label: "Settings",
            ),
          ],
        ),
      ),
    );
  }
}
