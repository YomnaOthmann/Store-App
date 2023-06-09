class ProductModel {
  final int id;
  final String title;
  final String price;
  final String description;
  final String category;
  final String image;
  final RatingModel? rating;

  ProductModel({
    required this.id,
    required this.title,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    this.rating,
  });

  factory ProductModel.fromJson(jsonData) {
    return ProductModel(
      id: jsonData['id'],
      title: jsonData['title'],
      price: jsonData['price'].toString(),
      description: jsonData['description'],
      category: jsonData['category'],
      image: jsonData['image'],
      rating: jsonData['rating'] == null
          ? null
          : RatingModel.fromJson(jsonData['rating']),
    );
  }
}

class RatingModel {
  final dynamic rate;
  final int count;

  RatingModel({
    required this.count,
    required this.rate,
  });

  factory RatingModel.fromJson(jsonData) {
    return RatingModel(
      count: jsonData['count'],
      rate: jsonData['rate'],
    );
  }
}
