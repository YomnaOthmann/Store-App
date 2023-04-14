import 'package:http/http.dart' as http;
import 'package:store_app/helper/api.dart';

import '../models/product_model.dart';

class AddProductService {
  Future<ProductModel> addProduct({
    required String title,
    required String price,
    required String image,
    required String desc,
    required String category,
  }) async {
    await Api().post(
      url: 'https://fakestoreapi.com/products',
      body: {
        'title': title,
        'price': price,
        'description': desc,
        'image': image,
        'category': category,
      },
    );
  }
}
