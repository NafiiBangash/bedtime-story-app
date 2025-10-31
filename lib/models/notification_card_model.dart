import 'package:flutter/material.dart';

class NotificationCardModel {
  String? imageUrl;
  String? msg;
  String? time;
  String? name;

  NotificationCardModel({this.imageUrl,this.msg,this.time,this.name});

  static List<NotificationCardModel> notifications = [
    NotificationCardModel(
      imageUrl: 'assets/images/user1.png',
      msg: 'Poetry Book are request',
      time: '3 hours ago',
      name: 'Andrew'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        msg: 'Poetry Book are request',
        time: '3 hours ago',
        name: 'Andrew'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        msg: 'Poetry Book are request',
        time: '3 hours ago',
        name: 'Andrew'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        msg: 'Poetry Book are request',
        time: '3 hours ago',
        name: 'Andrew'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        msg: 'Poetry Book are request',
        time: '3 hours ago',
        name: 'Andrew'
    ),
    NotificationCardModel(
        imageUrl: 'assets/images/user1.png',
        msg: 'Poetry Book are request',
        time: '3 hours ago',
        name: 'Andrew',
    ),
  ];
}