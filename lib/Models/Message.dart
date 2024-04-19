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

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'senderId': senderId,
      'receiverId': receiverId,
      'messageText': messageText,
      'timestamp': timestamp.toIso8601String(),
    };
  }

  static Message fromJson(Map<String, dynamic> json) {
    return Message(
      id: json['id'],
      senderId: json['senderId'],
      receiverId: json['receiverId'],
      messageText: json['messageText'],
      timestamp: DateTime.parse(json['timestamp']),
    );
  }
}
