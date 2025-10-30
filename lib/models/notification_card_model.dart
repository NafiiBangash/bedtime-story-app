import 'package:flutter/material.dart';

class NotificationCardModel {
  String? imageUrl;
  String? title;
  String? time;

  NotificationCardModel({this.imageUrl,this.title,this.time});

  static List<NotificationCardModel> notifications = [
    NotificationCardModel(
      imageUrl: 'assets/images/user1.png',
      title: 'Poetry Book are request By Andrew',
      time: '3 hours ago'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        title: 'Poetry Book are request By Andrew',
        time: '3 hours ago'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        title: 'Poetry Book are request By Andrew',
        time: '3 hours ago'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        title: 'Poetry Book are request By Andrew',
        time: '3 hours ago'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        title: 'Poetry Book are request By Andrew',
        time: '3 hours ago'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        title: 'Poetry Book are request By Andrew',
        time: '3 hours ago'
    ),
  ];
}