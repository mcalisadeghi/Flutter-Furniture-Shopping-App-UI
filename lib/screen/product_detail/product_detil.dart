import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product/product_model.dart';

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
            height: size.height * 0.5,
            width: size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
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
              children: [
                InkWell(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: Icon(
                    Icons.arrow_back,
                    size: 28.0,
                  ),
                ),
                Text(
                  'Product',
                  style: Theme.of(context).textTheme.titleSmall!.copyWith(
                        fontSize: 18.0,
                      ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
