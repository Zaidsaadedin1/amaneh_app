class UpdateRequestDTO {
  String requestId;
  String description;
  DateTime date;
  String status;
  double weight;
  double height;
  double width;
  double depth;
  int paymentId;

  UpdateRequestDTO({
    required this.requestId,
    required this.description,
    required this.date,
    required this.status,
    required this.weight,
    required this.height,
    required this.width,
    required this.depth,
    required this.paymentId,
  });

  Map<String, dynamic> toJson() {
    return {
      'requestId': requestId,
      'description': description,
      'date': date?.toIso8601String(),
      'status': status,
      'weight': weight,
      'height': height,
      'width': width,
      'depth': depth,
      'paymentId': paymentId,
    };
  }
}
