import 'package:store_app/helper/api.dart';
import 'package:store_app/models/product_model.dart';

class AllProductsService {
  static const String baseUrl = "https://fakestoreapi.com";
  Future<List<ProductModel>> getAllProducts() async {
    List<dynamic> data = await Api().get(url: '$baseUrl/products');

    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}

/**
 * 200 or more >> OK
 * 400 or more >> client error
 * 500 or more >> server error
**/