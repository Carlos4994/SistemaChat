// ignore_for_file: prefer_const_constructors

import 'package:clon_whastapp/models/chatItem.dart';
import 'package:flutter/material.dart';

class ChatItemWidget extends StatelessWidget {
  final ChatItem chatItem;

  const ChatItemWidget({Key? key, required this.chatItem}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(chatItem.avatarURL),
      ),
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(
            chatItem.name,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          Text(
            chatItem.lastMessageTime,
            style: TextStyle(fontSize: 10.0),
          ),
        ],
      ),
      subtitle: Text(chatItem.shortMessage),
    );
  }
}
