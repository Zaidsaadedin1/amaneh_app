import 'package:amaneh_app/Models/Activity.dart';
import 'package:amaneh_app/Models/Notification.dart';
import 'package:amaneh_app/Models/Payment.dart';
import 'package:amaneh_app/Models/Request.dart';

class User {
  String id;
  String firstName;
  String lastName;
  DateTime dateOfBirth;
  String phoneNumber;
  String email;
  String password;
  String confirmPassword;
  String country;
  String idImage;
  String passportImage;
  String personalImage;
  bool isShipping;
  List<Activity> listOfActivities;
  List<Notification> listOfNotifications;
  List<Payment> listOfPayments;
  List<Request> listOfRequests;

  User({
    required this.id,
    required this.firstName,
    required this.lastName,
    required this.dateOfBirth,
    required this.phoneNumber,
    required this.email,
    required this.password,
    required this.confirmPassword,
    required this.country,
    required this.idImage,
    required this.passportImage,
    required this.personalImage,
    required this.isShipping,
    required this.listOfActivities,
    required this.listOfNotifications,
    required this.listOfPayments,
    required this.listOfRequests,
  });

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'dateOfBirth': dateOfBirth.toIso8601String(),
      'phoneNumber': phoneNumber,
      'email': email,
      'password': password,
      'confirmPassword':
          confirmPassword, 
      'country': country,
      'idImage': idImage,
      'passportImage': passportImage,
      'personalImage': personalImage,
      'isShipping': isShipping,
      'listOfActivities': listOfActivities.map((a) => a.toJson()).toList(),
      'listOfNotifications':
          listOfNotifications.map((n) => n.toJson()).toList(),
      'listOfPayments': listOfPayments.map((p) => p.toJson()).toList(),
      'listOfRequests': listOfRequests.map((r) => r.toJson()).toList(),
    };
  }

  static User fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      firstName: json['firstName'],
      lastName: json['lastName'],
      dateOfBirth: DateTime.parse(json['dateOfBirth']),
      phoneNumber: json['phoneNumber'],
      email: json['email'],
      password: json['password'],
      confirmPassword: json['confirmPassword'],
      country: json['country'],
      idImage: json['idImage'],
      passportImage: json['passportImage'],
      personalImage: json['personalImage'],
      isShipping: json['isShipping'],
      listOfActivities: (json['listOfActivities'] as List)
          .map((a) => Activity.fromJson(a))
          .toList(),
      listOfNotifications: (json['listOfNotifications'] as List)
          .map((n) => Notification.fromJson(n))
          .toList(),
      listOfPayments: (json['listOfPayments'] as List)
          .map((p) => Payment.fromJson(p))
          .toList(),
      listOfRequests: (json['listOfRequests'] as List)
          .map((r) => Request.fromJson(r))
          .toList(),
    );
  }
}
