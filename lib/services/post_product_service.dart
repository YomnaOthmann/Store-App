import 'package:http/http.dart' as http;

import '../models/product_model.dart';

class PostProductSeervice {
  void postProduct() async {
    await http.post(
      Uri.parse('https://fakestoreapi.com/products'),
      body: {
        'title': 'test',
        'price': 13.5,
        'description': 'ipsum set',
        'image': 'https://i.pravatar.cc',
        'category': 'electronic',
      },
    );
  }
}
