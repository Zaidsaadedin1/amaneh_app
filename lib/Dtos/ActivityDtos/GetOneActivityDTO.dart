class GetActivityDTO {
  String userId;
  String activityId;

  GetActivityDTO({required this.userId, required this.activityId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'activityId': activityId,
    };
  }
}
