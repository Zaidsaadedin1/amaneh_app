class CreateActivityDTO {
  String description;
  String currentLocation;
  String destination;
  DateTime travelTime;
  DateTime arrivalDate;
  DateTime arrivalTime;
  double availableWeight;
  double availableSize;
  String recommendedItemsToShip;
  double basePrice;

  CreateActivityDTO({
    required this.description,
    required this.currentLocation,
    required this.destination,
    required this.travelTime,
    required this.arrivalDate,
    required this.arrivalTime,
    required this.availableWeight,
    required this.availableSize,
    required this.recommendedItemsToShip,
    required this.basePrice,
  });

  Map<String, dynamic> toJson() {
    return {
      'description': description,
      'currentLocation': currentLocation,
      'destination': destination,
      'travelTime': travelTime.toIso8601String(),
      'arrivalDate': arrivalDate.toIso8601String(),
      'arrivalTime': arrivalTime.toIso8601String(),
      'availableWeight': availableWeight,
      'availableSize': availableSize,
      'recommendedItemsToShip': recommendedItemsToShip,
      'basePrice': basePrice,
    };
  }
}
