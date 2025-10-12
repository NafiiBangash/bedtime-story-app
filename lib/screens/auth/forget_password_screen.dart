import 'package:bedtime_stories/widgets/textfield_widget.dart';
import 'package:bedtime_stories/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.png'),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            TopBar(title: 'Forget Password'),
            SizedBox(height: 100),
            Text('Enter the email address link with your account to reset your password.',style: TextStyle(color: Colors.white),),
            SizedBox(height: 20),
            TextFieldWidget(iconUrl: 'assets/icons/sms.png', hint: 'Email Address'),
            SizedBox(height: 40),
            Image.asset('assets/icons/send_btn.png',height: 60,),
          ],
        ),
      ),
    );
  }
}
