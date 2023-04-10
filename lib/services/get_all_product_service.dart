import 'dart:convert';

import 'package:store_app/models/product_model.dart';
import 'package:http/http.dart' as http;

class AllProductsService {
  static const String baseUrl = "https://fakestoreapi.com";
  Future<List<ProductModel>> getAllProducts() async {
    http.Response response = await http.get(Uri.parse('$baseUrl/products'));

    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> products = [];

      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
      return products;
    } else {
      throw Exception("Error At Status code ${response.statusCode}");
    }
  }
}

/**
 * 200 or more >> OK
 * 400 or more >> client error
 * 500 or more >> server error
**/