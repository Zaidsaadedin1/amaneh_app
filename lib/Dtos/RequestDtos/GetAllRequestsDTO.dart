class GetAllRequestsDTO {
  String userId;

  GetAllRequestsDTO({required this.userId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
    };
  }
}
