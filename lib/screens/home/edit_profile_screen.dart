import 'package:bedtime_stories/widgets/drop_down_textfield_widget.dart';
import 'package:bedtime_stories/widgets/textfield_widget.dart';
import 'package:bedtime_stories/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({Key? key}) : super(key: key);

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {

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
            TopBar(title: 'Edit Profile'),
            const SizedBox(height: 40),
            TextFieldWidget(iconUrl: 'assets/icons/person_y.png', hint: 'Nafees'),
            const SizedBox(height: 20,),
            TextFieldWidget(iconUrl: 'assets/icons/person_y.png', hint: 'Rehman'),
            const SizedBox(height: 20,),
            TextFieldWidget(iconUrl: 'assets/icons/sms_y.png', hint: 'nafeesreh@123'),
            const SizedBox(height: 20,),
            DropDownTextfieldWidget(),
            const SizedBox(height: 100),
            Image.asset('assets/images/save.png',height: 60,width: double.infinity,fit: BoxFit.cover,)

          ],
        ),
      ),
    );
  }
}
