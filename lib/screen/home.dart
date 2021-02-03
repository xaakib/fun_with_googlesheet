import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final _formKey = GlobalKey<FormState>();
    final _scaffoldKey = GlobalKey<ScaffoldState>();

    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController phoneControlller = TextEditingController();
    TextEditingController feedBackController = TextEditingController();
    var url =
        'https://script.google.com/macros/s/AKfycbw4LX-Dtl_085HhXiftuXyK3QtmDentSGhCjkLJ3kl6xqUoGP4Jli4kGg/exec';

    Future<http.Response> sendData() {
      return http.post(
        url,
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: jsonEncode(<String, String>{
          'name': 'Xaaakihb',
          'email': 'nasimulhasan513@gmail.com',
          'mobileno': '01646915232',
          'feedback': 'dddd'
        }),
      );
    }

    // void _submitForm() {
    //   if (_formKey.currentState.validate()) {
    //     FeedbackForm feedbackForm = FeedbackForm(
    //         nameController.text,
    //         emailController.text,
    //         feedBackController.text,
    //         phoneControlller.text);
    //     FormcController formcController = FormcController((String response) {
    //       print(response);
    //       if (response == FormcController.STATUS_SUCCESS) {
    //         print("Success");
    //       } else {
    //         print("Failed");
    //       }
    //     });
    //     formcController.submiteForm(feedbackForm);
    //   }
    // }

    // showSnackBar(String message) {
    //   final snakbar = SnackBar(content: Text(message));
    //   // ignore: deprecated_member_use
    //   _scaffoldKey.currentState.showSnackBar(snakbar);
    // }

    return Scaffold(
      appBar: AppBar(
        title: Text("GoogleSheet Fun"),
      ),
      body: Form(
        key: _formKey,
        child: Container(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TextFormField(
                  controller: nameController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Valid Name";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: "Name"),
                ),
                TextFormField(
                  controller: emailController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Email Valid Name";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: "Email"),
                ),
                TextFormField(
                  controller: phoneControlller,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Valid Mobile";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: "MobileNum"),
                ),
                TextFormField(
                  controller: feedBackController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return "Enter Valid Feedback";
                    } else {
                      return null;
                    }
                  },
                  decoration: InputDecoration(hintText: "FeedBack"),
                ),
                SizedBox(
                  height: 10,
                ),
                RaisedButton(
                  onPressed: () {
                    sendData();
                    print("Clicked");
                  },
                  child: Text("Submite"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
