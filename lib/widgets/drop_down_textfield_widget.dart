import 'package:flutter/material.dart';

class DropDownTextfieldWidget extends StatefulWidget {
  const DropDownTextfieldWidget({Key? key}) : super(key: key);

  @override
  State<DropDownTextfieldWidget> createState() => _DropDownTextfieldWidgetState();
}

class _DropDownTextfieldWidgetState extends State<DropDownTextfieldWidget> {
  String selectedRelation = 'Father';
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      width: double.infinity,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.white, width: 1.5),
        color: Colors.transparent,
      ),
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          value: selectedRelation, // your selected value
          dropdownColor: const Color(0xff23253C), // optional dark theme
          icon: const Icon(
            Icons.arrow_drop_down,
            color: Colors.amber,
          ),
          style: const TextStyle(
            color:Colors.white70,
            fontSize: 14,
          ),
          items:  [
            DropdownMenuItem(
              value: 'Father',
              child: Row(
                children: [
                  faceIcon(),
                  SizedBox(width: 15),
                  Text('Father'),
                ],
              ),
            ),
            DropdownMenuItem(
              value: 'Mother',
              child: Row(
                children: [
                  faceIcon(),
                  SizedBox(width: 15),
                  Text('Mother'),
                ],
              ),
            ),
            DropdownMenuItem(
              value: 'Brother',
              child: Row(
                children: [
                  faceIcon(),
                  SizedBox(width: 15),
                  Text('Brother'),
                ],
              ),
            ),
          ],
          onChanged: (value) {
            setState(() {
              selectedRelation = value!;
            });
          },
        ),
      ),
    );
  }
  Widget faceIcon(){
    return Image.asset('assets/icons/face.png',height: 18,width: 18,fit: BoxFit.cover);
  }
}
