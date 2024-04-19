import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // Register a new user
  Future<UserCredential> register(String email, String password) async {
    try {
      return await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw Exception('Failed to register user: $e');
    }
  }

  // Login user
  Future<UserCredential> login(String email, String password) async {
    try {
      return await _auth.signInWithEmailAndPassword(
          email: email, password: password);
    } catch (e) {
      throw Exception('Failed to login user: $e');
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
}
