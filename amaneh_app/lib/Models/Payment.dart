class Payment {
  String id;
  double amount;
  String currency;
  DateTime date;
  String paymentMethod; 

  Payment({
    required this.id,
    required this.amount,
    required this.currency,
    required this.date,
    required this.paymentMethod,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'amount': amount,
      'currency': currency,
      'date': date.toIso8601String(),
      'paymentMethod': paymentMethod,
    };
  }

  static Payment fromJson(Map<String, dynamic> json) {
    return Payment(
      id: json['id'],
      amount: json['amount'].toDouble(),
      currency: json['currency'],
      date: DateTime.parse(json['date']),
      paymentMethod: json['paymentMethod'],
    );
  }
}
