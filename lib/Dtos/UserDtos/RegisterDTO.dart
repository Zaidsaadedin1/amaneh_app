class RegisterDTO {
  String email;
  String password;
  String firstName;
  String lastName;
  DateTime dateOfBirth;

  RegisterDTO({
    required this.email,
    required this.password,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
  });

  Map<String, dynamic> toJson() {
    return {
      'email': email,
      'password': password,
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth.toIso8601String(),
    };
  }
}
