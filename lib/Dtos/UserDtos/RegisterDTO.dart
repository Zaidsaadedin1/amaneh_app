class RegisterDTO {
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String phoneNumber;
  String email;
  String password;
  String confirmPassword;
  String country;
  String idImage;
  String personalImage;

  RegisterDTO({
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.country,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.idImage,
    required this.personalImage,
  });

  Map<String, dynamic> toJson() {
    return {
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'password': password,
      'confirmPassword': confirmPassword,
      'country': country,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'phoneNumber': phoneNumber,
      'idImage': idImage,
      'personalImage': personalImage,
    };
  }
}
