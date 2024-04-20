class Payment {
  String id;
  double amount; // Ensure `double` is lowercase
  String currency;
  double extraWeight; // Corrected spelling of `extraWeight`
  double extraSize;
  double distanceFees;
  double moreSafety; // Corrected spelling of `moreSafety`
  double lastPrice;
  DateTime date;
  String paymentMethod;

  Payment({
    required this.id,
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
}
