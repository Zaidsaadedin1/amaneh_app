class GetUserDTO {
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String email;
  String phoneNumber;
  String country;

  GetUserDTO({
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.email,
    required this.phoneNumber,
    required this.country,
  });

  factory GetUserDTO.fromJson(Map<String, dynamic> json) {
    return GetUserDTO(
      firstName: json['firstName'] as String,
      lastName: json['lastName'] as String,
      dateOfBirth: DateTime.parse(json['dateOfBirth'] as String),
      email: json['email'] as String,
      phoneNumber: json['phoneNumber'] as String,
      country: json['country'] as String,
    );
  }
}
