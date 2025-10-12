import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final Color color;
  final String title;
  final String iconUrl;
  final VoidCallback onTap;
  final Color titleColor;
  const OptionButton({super.key, required this.color,
    required this.title, required this.iconUrl,
    required this.onTap,this.titleColor= Colors.white
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 33,
        width: 199,
        padding: const EdgeInsets.symmetric(horizontal: 8),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(7.31),
          color: color,
          border: Border.all(color: Colors.white, width: 1),
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 16.61,
              width: 16.61,
              child: Image.asset(iconUrl),
            ),
            SizedBox(width: 10,),
            Text(title,style: TextStyle(color: titleColor),),
          ],
        ),
      ),
    );
  }
}
