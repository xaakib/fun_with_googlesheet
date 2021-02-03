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
    try {
      await http.get(URL + feedbackForm.toParams()).then((response) {
        callback(convert.jsonDecode(response.body)['status']);
      });
    } catch (e) {
      print(e);
    }
  }
}
