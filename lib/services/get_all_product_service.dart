import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  static const String baseUrl = "https://fakestoreapi.com";
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http.get(Uri.parse('$baseUrl/products'));
    List<dynamic> data = jsonDecode(response.body);
    List<ProductModel> products = [];

    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
