import 'dart:convert';
import 'package:flutter/widgets.dart';
import 'package:http/http.dart' as http;


class Auth with ChangeNotifier {
  late String _token;
  late DateTime _expiryDate;
  late String _userId;
  Future<void> signup(String? email, String? password) async {
final url =
    Uri.parse('https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyDWDAA4a0jGAYw36uRoO561f3NOXVfnvNU');
final response = await http.post(
  url,
  body: json.encode(
    {
      'email': email,
      'password': password,
      'returnSecureToken': true,

    },
),
);
print(json.decode(response.body));
  }
  
}