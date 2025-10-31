import 'package:bedtime_stories/models/notification_card_model.dart';
import 'package:bedtime_stories/widgets/top_bar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    List<NotificationCardModel> _notificaitons = NotificationCardModel.notifications;
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage('assets/images/home.png',),fit: BoxFit.cover)
        ),
        child: Column(
          children: [
            TopBar(title: 'Notification'),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: _notificaitons.length,
                  itemBuilder: (context,index){
                return Container(
                  margin: const EdgeInsets.only(bottom: 12),
                  padding: const EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: Colors.white.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(color: Colors.white,width: 0.5),
                  ),
                  child: Row(
                    children: [
                     Container(
                       height: 45,
                       width: 45,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(6),
                         border: Border.all(
                           color: Colors.white,
                           width: 0.87
                         )
                       ),
                       child: Image.asset(_notificaitons[index].imageUrl!,fit: BoxFit.cover,),
                     ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${_notificaitons[index].msg!}\nBy ${_notificaitons[index].name!}',
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              _notificaitons[index].time!,
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
            )
          ],
        ),
      ),
    );
  }
}
