import 'package:amaneh_app/Dtos/ActivityDtos/GetAllActivitiesDTO.dart';
import 'package:amaneh_app/Dtos/ActivityDtos/GetOneActivityDTO.dart';
import 'package:amaneh_app/Dtos/UserDtos/LoginDTO.dart';
import 'package:amaneh_app/Dtos/UserDtos/RegisterDTO.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Register a new user using RegisterDTO
  Future<UserCredential> register(RegisterDTO dto) async {
    try {
      UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
              email: dto.email, password: dto.password);

      // Additional user details are added to Firestore
      await _firestore.collection('users').doc(userCredential.user!.uid).set({
        'firstName': dto.firstName,
        'lastName': dto.lastName,
        'email': dto.email,
        'country': dto.country,
        'dateOfBirth': dto.dateOfBirth.toIso8601String(),
        'phoneNumber': dto.phoneNumber,
        'idImage': dto.idImage,
        'personalImage': dto.personalImage
      });

      return userCredential;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'email-already-in-use') {
        throw Exception(
            'Email already in use. Please use a different email address.');
      } else {
        throw Exception('Failed to register user: ${e.message}');
      }
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }

  // Login user using LoginDTO
  Future<UserCredential> login(LoginDTO dto) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: dto.email, password: dto.password);
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found' || e.code == 'wrong-password') {
        throw Exception(
            'Invalid email or password. Please try again or reset your password.');
      } else {
        throw Exception('Login failed: ${e.message}');
      }
    } catch (e) {
      throw Exception('Login failed: $e');
    }
  }

  // Edit profile
  Future<void> editProfile(String userId, Map<String, dynamic> updates) async {
    try {
      await _firestore.collection('users').doc(userId).update(updates);
    } catch (e) {
      throw Exception('Failed to update profile: $e');
    }
  }

  // Create a new request
  Future<void> createRequest(
      String userId, Map<String, dynamic> requestData) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('requests')
          .add(requestData);
    } catch (e) {
      throw Exception('Failed to create request: $e');
    }
  }

  // Delete a request
  Future<void> deleteRequest(String userId, String requestId) async {
    try {
      await _firestore
          .collection('users')
          .doc(userId)
          .collection('requests')
          .doc(requestId)
          .delete();
    } catch (e) {
      throw Exception('Failed to delete request: $e');
    }
  }

  // Show all requests for a user
  Future<List<DocumentSnapshot>> showRequests(String userId) async {
    try {
      QuerySnapshot snapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('requests')
          .get();
      return snapshot.docs;
    } catch (e) {
      throw Exception('Failed to retrieve requests: $e');
    }
  }

  // Get notifications for a user
  Future<List<DocumentSnapshot>> getNotifications(String userId) async {
    try {
      QuerySnapshot snapshot = await _firestore
          .collection('users')
          .doc(userId)
          .collection('notifications')
          .get();
      return snapshot.docs;
    } catch (e) {
      throw Exception('Failed to retrieve notifications: $e');
    }
  }

  Future<DocumentSnapshot> getActivity(GetActivityDTO dto) async {
    try {
      // Fetching the activity from Firestore
      DocumentSnapshot activitySnapshot = await _firestore
          .collection('users')
          .doc(dto.userId)
          .collection('activities')
          .doc(dto.activityId)
          .get();

      if (!activitySnapshot.exists) {
        throw Exception('Activity not found');
      }
      return activitySnapshot;
    } catch (e) {
      print('Error fetching activity: $e');
      rethrow;
    }
  }

  // Service to get all activities for a user
  Future<List<QueryDocumentSnapshot>> getAllActivities(
      GetAllActivitiesDTO dto) async {
    QuerySnapshot querySnapshot = await _firestore
        .collection('users')
        .doc(dto.userId)
        .collection('activities')
        .get();
    return querySnapshot.docs;
  }
}
