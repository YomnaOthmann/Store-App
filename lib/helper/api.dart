import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Api {
  Future<dynamic> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body);
    } else {
      throw Exception(" Error with Status Code ${response.statusCode}");
    }
  }

  Future<dynamic> post({
    required String url,
    @required dynamic body,
    @required String? token,
  }) async {
    Map<String, String> header = {
      'Accept': 'application/json',
      'Content-Type': 'application/x-www-form-urlencoded',
    };

    if (token != null) {
      header.addAll({'Authorization': "Bearer $token"});
    }
    http.Response response = await http.post(
      Uri.parse(url),
      body: body,
      headers: header,
    );
    Map<String, dynamic> data = jsonDecode(response.body);
    return data;
  }
}
