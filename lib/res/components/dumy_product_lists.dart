import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';

class DummyProductList {
  static List<ProductModel> explorList = <ProductModel>[
    ProductModel(
      productImage: AppAssets.productIcon1,
      productName: 'Mini white chair',
      price: '250.00',
    ),
    ProductModel(
      productImage: AppAssets.productIcon2,
      productName: 'Mini white chair',
      price: '250.00',
    ),
    ProductModel(
      productImage: AppAssets.productIcon3,
      productName: 'Mini white chair',
      price: '250.00',
    ),
    ProductModel(
      productImage: AppAssets.productIcon4,
      productName: 'Mini white chair',
      price: '250.00',
    ),
  ];
  static List<ProductModel> bestsSellingList = <ProductModel>[
    ProductModel(
      productImage: AppAssets.productIcon1,
      productName: 'elegant chair',
      price: '250.00',
    ),
    ProductModel(
      productImage: AppAssets.productIcon2,
      productName: 'Minimal white chair',
      price: '250.00',
    ),
    ProductModel(
      productImage: AppAssets.productIcon3,
      productName: 'white chair',
      price: '250.00',
    ),
    ProductModel(
      productImage: AppAssets.productIcon4,
      productName: 'Mini chair',
      price: '250.00',
    ),
  ];
  static List<ProductModel> cartList = <ProductModel>[];
}
