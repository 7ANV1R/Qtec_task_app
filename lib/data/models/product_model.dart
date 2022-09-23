class ProductModel {
  // final String id;
  final String productName;
  final String image;

  ProductModel({
    // required this.id,
    required this.productName,
    required this.image,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      // id: json['data']['products']['results']['id'] as String,
      productName: json['product_name'] as String,
      image: json['image'] as String,
    );
  }
}
