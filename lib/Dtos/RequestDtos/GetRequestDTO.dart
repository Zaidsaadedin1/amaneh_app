class GetRequestDTO {
  String userId;
  String requestId;

  GetRequestDTO({required this.userId, required this.requestId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'requestId': requestId,
    };
  }
}
