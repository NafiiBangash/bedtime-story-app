import 'package:bedtime_stories/screens/auth/signup_screen.dart';
import 'package:bedtime_stories/utils/app_colors.dart';
import 'package:bedtime_stories/widgets/textfield_widget.dart';
import 'package:bedtime_stories/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class LoginWithMailScreen extends StatefulWidget {
  const LoginWithMailScreen({super.key});

  @override
  State<LoginWithMailScreen> createState() => _LoginWithMailScreenState();
}

class _LoginWithMailScreenState extends State<LoginWithMailScreen> {
  @override
  Widget build(BuildContext context) {
    final appColors = AppColors();
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            TopBar(title: 'Login With Mail'),
            SizedBox(height: 100),
            TextFieldWidget(
              iconUrl: 'assets/icons/sms.png',
              hint: 'Email Address',
            ),
            SizedBox(height: 20),
            TextFieldWidget(iconUrl: 'assets/icons/lock.png', hint: 'Password'),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Forget Password?',
                style: TextStyle(
                  color: appColors.pageIndicatorColor,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 40),
            Image.asset('assets/images/big_login.png',height: 60,),
            SizedBox(height: 20),
        GestureDetector(
          onTap: () {},
          child: RichText(
            text: TextSpan(
              style: const TextStyle(fontSize: 14, color: Colors.white), // default style
              children: [
                const TextSpan(text: "Don’t have an account? ",),
                TextSpan(
                  text: "Sign Up", // different color
                  style:  TextStyle(
                    color: appColors.pageIndicatorColor,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
        ),

          ],
        ),
      ),
    );
  }
}
