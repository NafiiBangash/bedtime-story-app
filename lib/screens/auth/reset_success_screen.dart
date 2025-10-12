import 'package:flutter/material.dart';

class ResetSuccessScreen extends StatefulWidget {
  const ResetSuccessScreen({Key? key}) : super(key: key);

  @override
  State<ResetSuccessScreen> createState() => _ResetSuccessScreenState();
}

class _ResetSuccessScreenState extends State<ResetSuccessScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/reset-success-home.png'),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset('assets/icons/success.png',height: 136,width: 121,fit: BoxFit.cover,),
            SizedBox(height: 30),
            Text('Password Reset\nSuccessful',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 28,fontWeight: FontWeight.bold,color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
