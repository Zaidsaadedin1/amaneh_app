class Activity {
  String id;
  String description;
  String currentLocation;
  String destination; // Corrected spelling from 'distination' to 'destination'
  DateTime travelTime;
  DateTime arrivalDate; // Corrected field name 'arivalDate' to 'arrivalDate'
  DateTime arrivalTime; // Corrected field name 'arivalTime' to 'arrivalTime'
  double availableWeight; // Corrected 'availbleWight' and changed to camelCase
  double availableSize; // Corrected 'availbleSize' and changed to camelCase
  String recommendedItemsToShip;
  double basePrice;

  Activity({
    required this.id,
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
}
