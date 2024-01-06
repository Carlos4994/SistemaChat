// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:clon_whastapp/models/chatItem.dart';
import 'package:clon_whastapp/screens/chat_item_widget.dart';
import 'package:flutter/material.dart';

class ChatListWidget extends StatelessWidget {
  const ChatListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: chatItems.length,
        itemBuilder: (BuildContext context, int position) {
          return Column(
            children: <Widget>[
              ChatItemWidget(
                chatItem: chatItems[position],
              ),
              Divider(
                height: 10.0,
              )
            ],
          );
        });
  }
}

List<ChatItem> chatItems = [
  ChatItem(
    avatarURL:
        'https://www.danielhernandez.website/wp-content/uploads/2017/07/facebook-icon-gran.png',
    name: 'Carlos',
    message: 'hola como estas',
    date: DateTime.parse('2010-05-06 01:45:44.000'),
    unreadMessage: 5,
    cheked: CheckStatus.doublecheck,
  ),
  ChatItem(
    avatarURL:
        'https://www.danielhernandez.website/wp-content/uploads/2017/07/facebook-icon-gran.png',
    name: 'Hector Guerrero',
    message: 'Estoy con una estudiante de la universidad',
    date: DateTime.parse('2010-05-06 01:45:44.000'),
    unreadMessage: 100,
    cheked: CheckStatus.check,
  ),
  ChatItem(
    avatarURL:
        'https://www.danielhernandez.website/wp-content/uploads/2017/07/facebook-icon-gran.png',
    name: 'Willim Sandoval',
    message: 'hola como estas',
    date: DateTime.parse('2010-05-06 01:45:44.000'),
    cheked: CheckStatus.doublegreencheck,
  ),
];
