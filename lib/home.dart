import 'package:flutter/material.dart';
import 'package:fun_with_googlesheet/http_service.dart';

class HomeScreen extends StatelessWidget {
  HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("GoogleSheet Fun"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            httpService.sendData();
            print("Clicked");
          },
          child: Text("Submite"),
        ),
      ),
    );
  }
}
