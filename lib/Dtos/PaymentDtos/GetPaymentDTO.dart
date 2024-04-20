class GetPaymentDTO {
  String id;

  GetPaymentDTO({required this.id});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
    };
  }
}
