class GetAllNotificationsDTO {
  String userId;

  GetAllNotificationsDTO({required this.userId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
    };
  }
}
