import 'dart:convert';

import 'package:http/http.dart' as http;

class Api {
  Future<List<dynamic>> get({required String url}) async {
    http.Response response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      return data;
    } else {
      throw Exception(" Error with Status Code ${response.statusCode}");
    }
  }
}
