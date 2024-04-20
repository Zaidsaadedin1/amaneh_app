class Message {
  String id;
  String senderId;
  String receiverId;
  String messageText;
  DateTime timestamp;

  Message({
    required this.id,
    required this.senderId,
    required this.receiverId,
    required this.messageText,
    required this.timestamp,
  });

}
