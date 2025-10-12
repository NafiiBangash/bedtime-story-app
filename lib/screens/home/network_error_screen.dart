import 'package:flutter/material.dart';

class NetworkErrorScreen extends StatefulWidget {
  const NetworkErrorScreen({Key? key}) : super(key: key);

  @override
  State<NetworkErrorScreen> createState() => _NetworkErrorScreenState();
}

class _NetworkErrorScreenState extends State<NetworkErrorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.png'),fit: BoxFit.cover)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/404.png',height: 163,fit: BoxFit.cover,),
            Text('Network Error!',style: TextStyle(color: Colors.white),)
          ],
        ),
      ),
    );
  }
}
