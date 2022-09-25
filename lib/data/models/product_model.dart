class ProductModel {
  final int id;
  final String image;
  final String productName;
  final double currentPrice;
  final double discount;
  final double sellingPrice;
  final double profit;
  final int stock;

  ProductModel({
    required this.id,
    required this.image,
    required this.productName,
    required this.currentPrice,
    required this.discount,
    required this.sellingPrice,
    required this.profit,
    required this.stock,
  });

  factory ProductModel.fromJson(Map<String, dynamic> json) {
    return ProductModel(
      id: json['id'] as int,
      image: json['image'] as String,
      productName: json['product_name'] as String,
      currentPrice: _currentPriceWithoutNull(json['charge']['current_charge']),
      discount: _discountWithoutNull(json['charge']['discount_charge']),
      sellingPrice: _sellingPriceWithoutNull(json['charge']['selling_price']),
      profit: _profitWithoutNull(json['charge']['profit']),
      stock: json['stock'] as int,
    );
  }

  static double _currentPriceWithoutNull(dynamic value) {
    if (value == null) {
      return 0.0;
    } else if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is String) {
      return double.parse(value);
    } else {
      return 0.0;
    }
  }

  static double _discountWithoutNull(dynamic value) {
    if (value == null) {
      return 0.0;
    } else if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is String) {
      return double.parse(value);
    } else {
      return 0.0;
    }
  }

  static double _sellingPriceWithoutNull(dynamic value) {
    if (value == null) {
      return 0.0;
    } else if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is String) {
      return double.parse(value);
    } else {
      return 0.0;
    }
  }

  static double _profitWithoutNull(dynamic value) {
    if (value == null) {
      return 0.0;
    } else if (value is int) {
      return value.toDouble();
    } else if (value is double) {
      return value;
    } else if (value is String) {
      return double.parse(value);
    } else {
      return 0.0;
    }
  }
}
