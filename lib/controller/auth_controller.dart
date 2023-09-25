import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthController {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  void signUpUser() {
    _auth.signInWithEmailAndPassword(email: , password: password)
    _firestore.collection('buyers').doc('').set({

    });
  }
}
