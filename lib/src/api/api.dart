import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Api {
  Api._();
  static final Api _instance = Api._();
  static Api get instance => _instance;
  FirebaseAuth get auth => FirebaseAuth.instance;
  FirebaseFirestore get firestore => FirebaseFirestore.instance;

  Future<UserCredential> signIn(String email, String password) async {
    try {
      return await auth.signInWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<UserCredential> signUp(String email, String password) async {
    try {
      return await auth.createUserWithEmailAndPassword(
          email: email, password: password);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> signOut() async {
    try {
      await auth.signOut();
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> resetPassword(String email) async {
    try {
      await auth.sendPasswordResetEmail(email: email);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<DocumentSnapshot> getUserFromFirestore(String userID) async {
    try {
      QuerySnapshot<Map<String, dynamic>> d = await firestore.collection('users').where("uId",isEqualTo: userID).get();
      return d.docs.first;
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> addUserToFirestore(Map<String, dynamic> data) async {
    try {
      await firestore.collection('users').doc(data['userID']).set(data);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> updateUserToFirestore(
      String userID, Map<String, dynamic> data) async {
    try {
      await firestore.collection('users').doc(userID).update(data);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> sabmitOrder(Map<String, dynamic> data) async {
    try {
      await firestore.collection('orders').add(data);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> addSuggestionsAndComplaint(Map<String, dynamic> data) async {
    try {
      await firestore.collection('suggestionsAndComplaints').add(data);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> renewContract(Map<String, dynamic> data) async {
    try {
      await firestore.collection('renewContract').add(data);
    } on FirebaseException {
      rethrow;
    }
  }

  Future<void> deleteAccount() async {
    try {
      await firestore.collection('users').doc(auth.currentUser!.uid).delete();
      await auth.currentUser!.delete();
    } on FirebaseException {
      rethrow;
    }
  }
}
