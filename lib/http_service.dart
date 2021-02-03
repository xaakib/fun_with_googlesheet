import 'dart:convert';

import 'package:http/http.dart' as http;

class HttpService {
  var url =
      'https://script.google.com/macros/s/AKfycbw4LX-Dtl_085HhXiftuXyK3QtmDentSGhCjkLJ3kl6xqUoGP4Jli4kGg/exec';

  Future<http.Response> sendData() {
    return http.post(
      url,
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'name': 'New Data',
        'email': 'nasimulhasan513@gmail.com',
        'mobileno': '01646915232',
        'feedback': 'dddd'
      }),
    );
  }
}
