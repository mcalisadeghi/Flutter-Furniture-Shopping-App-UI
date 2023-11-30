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
  int selectedColor = 0;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(
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
          const SizedBox(
            height: 20.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              '\$${widget.productModel.price}',
              style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                    color: AppColors.redColor,
                    fontSize: 26.0,
                    fontWeight: FontWeight.w800,
                  ),
            ),
          ),
          const SizedBox(
            height: 4.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Row(
              children: [
                Text(
                  widget.productModel.productName,
                  style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: AppColors.redColor,
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
                const Spacer(),
                for (int i = 1; i <= 5; i++)
                  Icon(
                    i != 5 ? Icons.star_sharp : Icons.star_border,
                    color: AppColors.orangeColor,
                  ),
                const SizedBox(
                  width: 4.0,
                ),
                Text(
                  '4.5',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Row(
              children: getColors(),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> getColors() {
    return List.generate(
      colorList.length,
      (int index) => Padding(
        padding: const EdgeInsets.only(
          right: 8.0,
          top: 10.0,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            InkWell(
              onTap: () {
                setState(
                  () {
                    selectedColor = index;
                  },
                );
              },
              child: Icon(
                Icons.circle,
                color: colorList[index],
                size: 24.0,
              ),
            ),
            Visibility(
              visible: selectedColor == index,
              child: Icon(
                Icons.circle,
                color: colorList[index],
                size: 36.0, // time 21:36
              ),
            ),
          ],
        ),
      ),
    ).toList();
  }

  List<Color> colorList = <Color>[
    AppColors.grayColor,
    AppColors.redColor,
    AppColors.buttonColor,
  ];
}
