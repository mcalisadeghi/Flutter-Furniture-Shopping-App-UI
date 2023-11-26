import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
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
          Stack(
            children: [
              Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 22.0,
                ).copyWith(
                  top: size.height * 0.06,
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
              Positioned(
                bottom: -25.0,
                right: 20.0,
                child: Container(
                  height: 55.0,
                  width: 55.0,
                  decoration: BoxDecoration(
                    color: AppColors.whiteColor,
                    shape: BoxShape.circle,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                        color: AppColors.shadowColor,
                        spreadRadius: 3.0,
                        blurRadius: 5.0,
                      ),
                    ],
                  ),
                  child: Icon(
                    Icons.favorite,
                    size: 28.0,
                    color: AppColors.redColor,
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
