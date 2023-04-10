import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:store_app/services/get_all_categories_service.dart';
import '../models/product_model.dart';

class CategoriesService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    http.Response response = await http.get(
      Uri.parse(
        'https://fakestoreapi.com/products/category/$categoryName',
      ),
    );
    if (response.statusCode == 200) {
      List<dynamic> data = jsonDecode(response.body);
      List<ProductModel> products = [];
      for (int i = 0; i < data.length; i++) {
        products.add(ProductModel.fromJson(data[i]));
      }
      return products;
    } else {
      throw Exception('Error with Status Code ${response.statusCode}');
    }
  }
}
