class GetAllActivitiesDTO {
  String userId;

  GetAllActivitiesDTO({required this.userId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
    };
  }
}
