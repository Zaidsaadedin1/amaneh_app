class Request {
  String id;
  String description;
  DateTime date;
  String status; // Example: "Pending", "Approved", "Denied"
  //extras
  double weigtit;
  double height;
  double width;
  double depth;
  //point to the payment
  int paymentId;

  Request({
    required this.id,
    required this.description,
    required this.date,
    required this.status,
    required this.weigtit,
    required this.height,
    required this.width,
    required this.depth,
    required this.paymentId,
  });
}
