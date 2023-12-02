import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/res/components/dumy_product_lists.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Utils {
  static bool addToCart(ProductModel productModel) {
    DummyProductList.cartList.add(
      productModel,
    );
    return DummyProductList.cartList.contains(
      productModel,
    );
  }

  static toastMessage({
    String mesage = 'assed to cart!',
  }) {
    Fluttertoast.showToast(
      msg: mesage,
    );
  }
}
