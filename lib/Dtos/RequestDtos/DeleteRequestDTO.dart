class DeleteRequestDTO {
  String userId;
  String requestId;

  DeleteRequestDTO({
    required this.userId,
    required this.requestId,
  });

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
      'requestId': requestId,
    };
  }
}
