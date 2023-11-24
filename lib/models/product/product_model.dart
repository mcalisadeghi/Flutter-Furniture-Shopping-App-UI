class ProductModel {
  String productName;
  String? description;
  String productImage;
  String price;
  ProductModel({
    required this.productImage,
    required this.productName,
    this.description,
    required this.price,
  });
}
