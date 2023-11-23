class ProductModel {
  String productName;
  String? description;
  String productImage;
  ProductModel({
    required this.productImage,
    required this.productName,
    this.description,
  });
}
