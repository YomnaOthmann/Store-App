import '../helper/api.dart';
import '../models/product_model.dart';

class CategoryService {
  Future<List<ProductModel>> getCategoriesProducts(
      {required String categoryName}) async {
    List<dynamic> data = await Api().get(
      url: 'https://fakestoreapi.com/products/category/$categoryName',
    );

    List<ProductModel> products = [];
    for (int i = 0; i < data.length; i++) {
      products.add(ProductModel.fromJson(data[i]));
    }
    return products;
  }
}
