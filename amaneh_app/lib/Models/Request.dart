class Request {
  String id;
  String description;
  DateTime date;
  String status; // Example: "Pending", "Approved", "Denied"

  Request({
    required this.id,
    required this.description,
    required this.date,
    required this.status,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'description': description,
      'date': date.toIso8601String(),
      'status': status,
    };
  }

  static Request fromJson(Map<String, dynamic> json) {
    return Request(
      id: json['id'],
      description: json['description'],
      date: DateTime.parse(json['date']),
      status: json['status'],
    );
  }
}
