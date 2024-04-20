class CreateActivityDTO {
  String userId; // User ID to associate the activity with
  String title; // Title of the activity
  String description; // Description of the activity
  DateTime date; // Date of the activity
  String location; // Location of the activity (optional)

  CreateActivityDTO({
    required this.userId,
    required this.title,
    required this.description,
    required this.date,
    this.location = '',
  });

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'description': description,
      'date': date.toIso8601String(),
      'location': location,
    };
  }
}
