import 'package:http/http.dart' as http;
import 'package:http/http.dart';

Future<Response> get({required String url}) async {
  http.Response response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    return response;
  } else {
    throw Exception(" Error with Status Code ${response.statusCode}");
  }
}

class Api {}
