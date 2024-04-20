class UpdateAccountDTO {
  String userId;
  String? email;
  String? firstName;
  String? lastName;
  DateTime? dateOfBirth;
  String? phoneNumber;

  UpdateAccountDTO({
    required this.userId,
    this.email,
    this.firstName,
    this.lastName,
    this.dateOfBirth,
    this.phoneNumber,
  });

  Map<String, dynamic> toJson() {
    Map<String, dynamic> data = {'userId': userId};
    if (email != null) data['email'] = email;
    if (firstName != null) data['firstName'] = firstName;
    if (lastName != null) data['lastName'] = lastName;
    if (dateOfBirth != null) {
      data['dateOfBirth'] = dateOfBirth!.toIso8601String();
    }
    if (phoneNumber != null) data['phoneNumber'] = phoneNumber;
    return data;
  }
}
