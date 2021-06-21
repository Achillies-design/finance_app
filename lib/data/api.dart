import 'package:finance_app/model/User.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Apis {
  static String apiUrl = 'https://ms-food.demo.shopn.in/rest/';

// Test API

  static Future<User> login(email, password) async {
    final response = await http.post(
      Uri.parse(apiUrl + "login"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'username': email,
        'password': password,
        'deviceToken' : 'e0b7e015-2db8-422a-bd74-b61688d52166',
      }),
    );

    if (response.statusCode == 200) {
      print(response.body);
      User user = User.fromJson(json.decode((response.body)));
      print(user);
      return user;
    } else {
      throw Exception('Failed to create album.');
    }
  }

  static Future<List<dynamic>> getAlbum() async {
    final response = await http.get(
        Uri.parse('https://jsonplaceholder.typicode.com/albums'),
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        });

    if (response.statusCode == 200) {
      // If the server did return a 201 CREATED response,
      // then parse the JSON.
      //return Album.fromJson(jsonDecode(response.body));
      List<dynamic> values = new List<dynamic>();
      values = json.decode(response.body);
      print(values);
    } else {
      // If the server did not return a 201 CREATED response,
      // then throw an exception.
      throw Exception('Failed to create album.');
    }
  }
}
