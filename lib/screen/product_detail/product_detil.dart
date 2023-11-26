import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/screen/widget/shopping_cart_widget.dart';

class ProductDetail extends StatefulWidget {
  final ProductModel productModel;
  const ProductDetail({
    super.key,
    required this.productModel,
  });

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 22.0,
            ),
            alignment: Alignment.topCenter,
            height: size.height * 0.5,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(
                  70.0,
                ),
              ),
              image: DecorationImage(
                image: AssetImage(
                  widget.productModel.productImage,
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Product',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 18.0,
                      ),
                ),
                ShoppingCartWidget(
                  onTab: () {},
                ),

                // 16:38
              ],
            ),
          ),
        ],
      ),
    );
  }
}
