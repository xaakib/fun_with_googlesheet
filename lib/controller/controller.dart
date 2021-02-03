import 'dart:ffi';

import 'package:fun_with_googlesheet/model/feedback.dart';
import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

class FormcController {
  final Void Function(String) callback;
  static const String URL =
      "https://script.google.com/macros/s/AKfycbw4LX-Dtl_085HhXiftuXyK3QtmDentSGhCjkLJ3kl6xqUoGP4Jli4kGg/exec";

  static const STATUS_SUCCESS = "SUCCESS";
  FormcController(this.callback);
  void submiteForm(FeedbackForm feedbackForm) async {
    http.post(
      'https://jsonplaceholder.typicode.com/albums',
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      // body: jsonEncode(<String, String>{
      //   'name': _name
      // }),
    );
  }
}

class FeedbackForm {
  String _name;
  String _email;
  String _mobileNum;
  String _feedBack;

  FeedbackForm(this._name, this._email, this._feedBack, this._mobileNum);

  String toParams() =>
      "?name=$_name&email=$_email&mobileNum=$_mobileNum&feedback$_feedBack";
}
