class ProductModel {
  final String id;
  final String productName;

  ProductModel({
    required this.id,
    required this.productName,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as String,
      productName: json['product_name'] as String,
    );
  }
}
