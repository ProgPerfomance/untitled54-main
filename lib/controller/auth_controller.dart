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
  void signUpUser() async {
    UserCredential userCredentialemail = await _auth
        .createUserWithEmailAndPassword(email: email, password: password);
    User? user = userCredentialemail.user;
    _firestore.collection('buyers').doc(user!.uid).set({
      'uid': 'ffffff',
      'email': 'ddjfsdds',
      'firstname': 'ddddd',
      'lastname': 'dsfjsfs'
    });
  }
}
