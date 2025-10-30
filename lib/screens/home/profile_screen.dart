import 'package:bedtime_stories/widgets/profile_info_container.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20).copyWith(top: 40),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.png'),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 46,
                  width: 46,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.white.withOpacity(0.1),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/arrow.png',
                      height: 26,
                      width: 29,
                    ),
                  ),
                ),

                Container(
                  height: 38,
                  width: 38,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF44BBFE), // Purple
                        Color(0xFF1E78FE), // Blue
                      ],
                    ),
                  ),
                  child: Center(
                    child: Image.asset(
                      'assets/icons/edit.png',
                      height: 23,
                      width: 19,
                    ),
                  ),
                ),

              ],
            ),
            SizedBox(height: 40,),
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 80,
                  width: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17),
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                      Color(0xffFFCF53),
                      Color(0xffFF9900),
                    ]),
                  ),
                  child: Image.asset('assets/images/profile.png',fit: BoxFit.cover,),
                ),
                Positioned(
                  right: -10,
                  top: 28,
                  child: Container(
                    height: 24,
                    width: 24,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      gradient: const LinearGradient(
                        colors: [Color(0xff2E2F55), Color(0xff23253C)],
                      ),
                      border: Border.all(color: Colors.white, width: 1),
                    ),
                    alignment: const Alignment(0, -0.2),
                    child: Image.asset(
                      'assets/icons/camera.png',
                      height: 11,
                      width: 11,
                      fit: BoxFit.contain, // ensures proportional scaling
                    ),
                  ),
                )

              ],
            ),
            const SizedBox(height: 20),
            Text('Nafees Rehman',style: TextStyle(color: Colors.white,fontSize: 22,fontWeight: FontWeight.bold),),
            Text('nafeesrehman@123',style: TextStyle(color: Colors.white),),
            const SizedBox(height: 50),
            ProfileInfoContainer(iconUrl: 'assets/icons/person_y.png', title: 'Nafees Rehman'),
            const SizedBox(height: 20),
            ProfileInfoContainer(iconUrl: 'assets/icons/sms_y.png', title: 'nafeesreh@123'),
            const SizedBox(height: 20),
            ProfileInfoContainer(iconUrl: 'assets/icons/mdi_face-man.png', title: 'father'),
          ],
        ),
      ),
    );
  }
}
