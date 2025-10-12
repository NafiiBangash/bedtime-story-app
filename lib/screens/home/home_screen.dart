import 'package:bedtime_stories/utils/app_colors.dart';
import 'package:bedtime_stories/widgets/recently_read_card.dart';
import 'package:flutter/material.dart';

import 'kids_recently_read_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors();
    return Scaffold(
      backgroundColor: appColors.bckgrdColor,
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 40, horizontal: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/animoji.png',
                      height: 46,
                      width: 46,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(width: 10),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Welcome Back',
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          'Nafees Rehman',
                          style: TextStyle(color: Colors.white),
                        ),
                      ],
                    ),
                    Spacer(),
                    Image.asset(
                      'assets/icons/notification.png',
                      height: 38,
                      width: 38,
                      fit: BoxFit.cover,
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),

              /// Kids Recently Read
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Book Requests",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const KidsRecentlyReadScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "See All>",
                        style: TextStyle(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10),
              _bookCard(
                'Adventures in\nSavannah: Leo\'s Story',
                'assets/images/Rectangle 20.png',
                'assets/images/animoji-1.png',
                'Andrew'
              ),
              SizedBox(height: 10),
              _bookCard(
                  'Mystery of the\nWhispering Woods',
                  'assets/images/Rectangle 20 (1).png',
                  'assets/images/animoji-2.png',
                  'Andrew'
              ),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Kids recently Read",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => const KidsRecentlyReadScreen(),
                          ),
                        );
                      },
                      child: const Text(
                        "View all",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ),
                  SizedBox(height: 10,),
                  SizedBox(
                    height: 150,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      children: [
                        RecentlyReadCard(),
                        SizedBox(width: 10),
                        RecentlyReadCard(),
                        SizedBox(width: 10),
                        RecentlyReadCard()
                      ],
                    )
                  ),
              SizedBox(height: 10,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      "Themes Liked By",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min, // only as wide as needed
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'View All',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                          ),
                        ),
                        Transform.translate(
                          offset: const Offset(-2, 0), // move icon slightly closer
                          child: Icon(Icons.arrow_right,color: appColors.pageIndicatorColor,)
                        ),
                      ],
                    ),

                  ],
                ),
              ),
              SizedBox(height: 10,),
              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: [
                  themeCard('assets/images/snow.png'),
                  themeCard('assets/images/jangle.png'),
                  themeCard('assets/images/desert.png'),
                  themeCard('assets/images/ocean.png'),
                ],
              ),
              SizedBox(height: 20,),
              Image.asset('assets/images/In-App Banner_Vi03.png',height: 133,fit: BoxFit.cover,),
              SizedBox(height: 20,),
            ],
          ),
        ),
      ),
    );
  }
  Widget themeCard (String url){
    return  Container(
      height: 60,
      width: 161,
      decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(url),fit: BoxFit.cover
          )
      ),
    );
  }

  Widget _bookCard(String title, String imagePath,String user_imgPath,userName) {
    return Container(
      padding: const EdgeInsets.all(12),
      margin: const EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white.withOpacity(0.1),
      ),
      child: Row(
        children: [
          Image.asset(imagePath,width: 74, fit: BoxFit.cover),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(color: Colors.white, fontSize: 14),
                ),
                Text(
                  'Snow',
                  style: const TextStyle(color: Colors.white, fontSize: 12),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    Image.asset(user_imgPath,height: 24,width: 24,fit: BoxFit.fill),
                    SizedBox(width: 6.0,),
                    Text(
                      userName,
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    SizedBox(width: 20),
                    Image.asset('assets/icons/time.png',height: 16,width: 16,fit: BoxFit.cover,),
                    SizedBox(width: 6.0,),
                    Text(
                      '10:00',
                      style: const TextStyle(color: Colors.white, fontSize: 14),
                    ),

                  ],
                ),


              ],
            ),
          ),
        ],
      ),
    );
  }
}
