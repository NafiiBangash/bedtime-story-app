import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../utils/app_colors.dart';
import '../widgets/textfield_widget.dart';
import '../widgets/top_bar.dart';

class SignupWithMail extends StatefulWidget {
  const SignupWithMail({Key? key}) : super(key: key);

  @override
  State<SignupWithMail> createState() => _SignupWithMailState();
}

class _SignupWithMailState extends State<SignupWithMail> {
  bool checked = false;
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
            TopBar(title: 'Sign up With Mail'),
            SizedBox(height: 100),
            TextFieldWidget(iconUrl: 'assets/icons/mingcute_user-3-fill.png', hint: 'User First Name'),
            SizedBox(height: 20),
            TextFieldWidget(iconUrl: 'assets/icons/mingcute_user-3-fill.png', hint: 'User Last Name'),
            SizedBox(height: 20),
            TextFieldWidget(
              iconUrl: 'assets/icons/sms.png',
              hint: 'Email Address',
            ),
            SizedBox(height: 20),
            TextFieldWidget(iconUrl: 'assets/icons/lock.png', hint: 'Password'),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Theme(
                  data: Theme.of(context).copyWith(
                    unselectedWidgetColor: Colors.white, // border color when unchecked
                  ),
                  child: Checkbox(
                    value: checked,
                    activeColor: Colors.orange, // fill when checked
                    checkColor: Colors.white,   // tick color
                    onChanged: (value) {
                      setState(() {
                        checked = value!;
                      });
                    },
                  ),
                ),
                Text('By continuing you agree to terms and condition',style: TextStyle(color: appColors.pageIndicatorColor),)
              ],
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
