class CreateRequestDTO {
  String userId;
  String description;
  String status; // Could be "Pending", "Completed", etc.

  CreateRequestDTO({
    required this.userId,
    required this.description,
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'status': status,
      // Additional fields can be added here as needed
    };
  }
}
