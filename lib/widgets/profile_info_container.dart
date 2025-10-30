import 'package:flutter/material.dart';

class ProfileInfoContainer extends StatelessWidget {
  final String iconUrl;
  final String title;
  const ProfileInfoContainer({super.key, required this.iconUrl, required this.title});

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 55,
      padding: const EdgeInsets.symmetric(horizontal: 20),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(
            color: Colors.white
        ),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(iconUrl,height: 20,width: 20,fit: BoxFit.cover,),
          const SizedBox(width: 10),
          Text(title,style: TextStyle(color: Colors.white),)
        ],
      ),
    );
  }
}
