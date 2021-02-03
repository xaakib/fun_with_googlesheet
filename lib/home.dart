import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fun_with_googlesheet/http_service.dart';
import 'package:fun_with_googlesheet/model.dart';
import 'package:http/http.dart ' as http;

class HomeScreen extends StatelessWidget {
  HttpService httpService = HttpService();
  final TextEditingController emailControllers = TextEditingController();

  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GoogleSheet Fun"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            RaisedButton(
              onPressed: () {
                print("sende$emailControllers");
              },
              child: Text("Email"),
            ),
            TextFormField(
              controller: emailControllers,
              decoration: InputDecoration(hintText: "Email"),
            ),
            Center(
              child: RaisedButton(
                onPressed: () {
                  httpService.sendData();
                  print("Clicked");
                },
                child: Text("Submite"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
