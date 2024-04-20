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
    required this.personalImage,
    required this.isShipping,
    required this.listOfActivities,
    required this.listOfNotifications,
    required this.listOfPayments,
    required this.listOfRequests,
  });
}
