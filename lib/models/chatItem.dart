// ignore_for_file: file_names

class ChatItem {
  final String avatarURL;
  final String name;
  final String message;
  final DateTime date;
  final int unreadMessage;
  final CheckStatus cheked;
  ChatItem({
    required this.avatarURL,
    required this.name,
    required this.message,
    required this.date,
    this.unreadMessage = 0,
    this.cheked = CheckStatus.unckeck,
  });

  String get lastMessageTime => "${date.hour}:${date.minute}";

  String get shortMessage =>
      message.length > 30 ? '${message.substring(0, 28)}.....' : message;

  int get unReadMessageCount => unreadMessage > 99 ? 99 : unreadMessage;
  bool get haveUnreadMessage => unreadMessage != 0;
}

enum CheckStatus { unckeck, check, doublecheck, doublegreencheck }
