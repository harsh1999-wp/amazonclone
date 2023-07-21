import 'package:amazonclone/constants/error_handling.dart';
import 'package:amazonclone/constants/global_variables.dart';
import 'package:amazonclone/constants/utils.dart';
import 'package:amazonclone/models/user.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Authservice {
  //sign up user
  void signUpUser({
    required BuildContext context,
    required String email,
    required String password,
    required String name,
  }) async {
    try {
      User user = User(
          id: '',
          name: name,
          password: password,
          address: '',
          type: '',
          token: '',
          email: '');

      http.Response res =
          await http.post(Uri.parse('$uri/api/signup'), body: user.toJson());
      headers:
      <String, String>{'Content-type': 'application/json; charset=UTF-8'};
      httpErrorHandle(
        response: res,
        context: context,
        onSuccess: () {
          showSnackbar(
              context, 'Account Created! Login with same Credentials!👾');
        },
      );
    } catch (e) {
      showSnackbar(context, e.toString());
    }
  }
}
