import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthBuyerController {
  final password;
  final email;
  final name;
  final lastname;
  AuthBuyerController(
      {required this.password,
      required this.email,
      required this.name,
      required this.lastname});
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> signUpUser() async {
    UserCredential userCredentialemail = await _auth
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userCredentialemail.user;
    _firestore.collection('users').doc(user!.uid).set({
      'uid': user.uid,
      'buyer': true,
      'email': email,
      'firstname': name,
      'lastname': lastname
    });
  }
}

class AuthDeliveryController {
  final String password;
  final String email;
  final String name;
  final String? lastname;

  AuthDeliveryController({
    required this.password,
    required this.email,
    required this.name,
    this.lastname,
  });

  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> signUpUser() async {
    UserCredential userCredentialemail = await _auth
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userCredentialemail.user;
    _firestore.collection('users').doc(user!.uid).set({
      'uid': user!.uid,
      'email': email,
      'buyer': false,
      'firstname': name,
      'lastname': lastname,
      'isCompany': false,
    });
  }
}
  class AuthDeliveryComponyController {
  final String password;
  final String email;
  final String name;
  AuthDeliveryComponyController({
  required this.password,
  required this.email,
  required this.name,
  });
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  Future<void> signUpUser() async {
  UserCredential userCredentialemail = await _auth
      .createUserWithEmailAndPassword(email: email, password: password);
  User? user = userCredentialemail.user;
  _firestore.collection('users').doc(user!.uid).set({
  'uid': user!.uid,
  'email': email,
  'buyer': false,
  'firstname': name,
  'isCompany': true,
  });
}
}
