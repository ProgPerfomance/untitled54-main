import 'package:flutter/foundation.dart';

class UserModel with ChangeNotifier {
  String? company, firstName, lastName, password, email;
  bool isCompany = false;

  Future<void> submit({
    String? company,
    String? firstName,
    String? lastName,
    String? password,
    String? email,
    bool isCompany = false,
  }) async {}
}
