class CreatePaymentDTO {
  double amount;
  String currency;
  double extraWeight;
  double extraSize;
  double distanceFees;
  double moreSafety;
  double lastPrice;
  DateTime date;
  String paymentMethod;

  CreatePaymentDTO({
    required this.amount,
    required this.currency,
    required this.extraWeight,
    required this.extraSize,
    required this.distanceFees,
    required this.moreSafety,
    required this.lastPrice,
    required this.date,
    required this.paymentMethod,
  });

  Map<String, dynamic> toJson() {
    return {
      'amount': amount,
      'currency': currency,
      'extraWeight': extraWeight,
      'extraSize': extraSize,
      'distanceFees': distanceFees,
      'moreSafety': moreSafety,
      'lastPrice': lastPrice,
      'date': date.toIso8601String(),
      'paymentMethod': paymentMethod,
    };
  }
}
