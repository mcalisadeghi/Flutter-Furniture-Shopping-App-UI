import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/app_bar_widget.dart';
import 'package:flutter_application_1/screen/product_detail/cart/cart_view.dart';

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
      backgroundColor: AppColors.backGoundColor,
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
                child: const AppaBarWidget(
                  title: 'Product',
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
            child: Text(
              'Color Option',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Row(
              children: getColors(),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
            ),
            child: Text(
              'Description',
              style: Theme.of(context).textTheme.titleSmall,
            ),
          ),
          const SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20.0,
            ),
            child: Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever sinmbled it to make a type specimen book. It has survived n",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 14.0,
                  ),
              textAlign: TextAlign.justify,
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: () {},
              child: Container(
                width: size.width * 0.55,
                height: 65.0,
                padding: const EdgeInsets.all(
                  12.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(
                      70.0,
                    ),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.add,
                      color: AppColors.whiteColor,
                      size: 29.0,
                    ),
                    const SizedBox(
                      width: 10.0,
                    ),
                    Text(
                      'Add to Cart',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.whiteColor,
                          ),
                    ),
                  ],
                ),
              ),
            ),
          )
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
                size: selectedColor == index ? 20.0 : 30.0,
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
