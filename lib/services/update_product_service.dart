import 'package:store_app/models/product_model.dart';

import '../helper/api.dart';

class UpdateProductService {
  Future<ProductModel> updateProduct({required int id}) async {
    Map<String, dynamic> data = await Api().put(
      url: 'https://fakestoreapi.com/products/$id',
    );
    return ProductModel.fromJson(data);
  }
}
