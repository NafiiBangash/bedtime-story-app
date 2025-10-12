import 'package:bedtime_stories/widgets/textfield_widget.dart';
import 'package:bedtime_stories/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class ResetPasswordScreen extends StatefulWidget {
  const ResetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ResetPasswordScreen> createState() => _ResetPasswordScreenState();
}

class _ResetPasswordScreenState extends State<ResetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.png'),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            TopBar(title: 'Reset Password'),
            SizedBox(height: 100,),
            Text('You new password must be different from previous '
              'used passwords.',style: TextStyle(color: Colors.white),),
            SizedBox(height: 20,),
            TextFieldWidget(iconUrl: 'assets/icons/lock.png', hint: 'Current Password',
              isSuffix: true,obscure: true,),
            SizedBox(height: 20),
            TextFieldWidget(iconUrl: 'assets/icons/lock.png', hint: 'Create Password',
              isSuffix: true,obscure: true,),
            SizedBox(height: 40),
            Image.asset('assets/images/resetpw_btn.png',height: 60,),
          ],
        ),
      ),
    );
  }
}
