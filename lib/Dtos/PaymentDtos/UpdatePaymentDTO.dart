class UpdatePaymentDTO {
  String id;
  double? amount;
  String? currency;
  double? extraWeight;
  double? extraSize;
  double? distanceFees;
  double? moreSafety;
  double? lastPrice;
  DateTime? date;
  String? paymentMethod;

  UpdatePaymentDTO({
    required this.id,
    this.amount,
    this.currency,
    this.extraWeight,
    this.extraSize,
    this.distanceFees,
    this.moreSafety,
    this.lastPrice,
    this.date,
    this.paymentMethod,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> json = {
      'id': id,
    };

    if (amount != null) json['amount'] = amount;
    if (currency != null) json['currency'] = currency;
    if (extraWeight != null) json['extraWeight'] = extraWeight;
    if (extraSize != null) json['extraSize'] = extraSize;
    if (distanceFees != null) json['distanceFees'] = distanceFees;
    if (moreSafety != null) json['moreSafety'] = moreSafety;
    if (lastPrice != null) json['lastPrice'] = lastPrice;
    if (date != null) json['date'] = date!.toIso8601String();
    if (paymentMethod != null) json['paymentMethod'] = paymentMethod;

    return json;
  }
}
