// ignore_for_file: file_names

class ChatItem {
  final String avatarURL;
  final String name;
  final String message;
  final DateTime date;
  final int unreadMessage;
  ChatItem({
    required this.avatarURL,
    required this.name,
    required this.message,
    required this.date,
    this.unreadMessage = 0,
  });

  String get lastMessageTime => "${date.hour}:${date.minute}";

  String get shortMessage => "${message}";

  int get unReadMessageCount => unreadMessage > 99 ? 99 : unreadMessage;
  bool get haveUnreadMessage => unreadMessage != 0;
}
