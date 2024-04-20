class DeleteAccountDTO {
  String userId;

  DeleteAccountDTO({required this.userId});

  Map<String, dynamic> toJson() {
    return {
      'userId': userId,
    };
  }
}
