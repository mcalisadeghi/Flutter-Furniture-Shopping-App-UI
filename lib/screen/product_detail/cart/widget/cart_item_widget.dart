import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class CartItemWidget extends StatefulWidget {
  final ProductModel productModel;
  const CartItemWidget({
    super.key,
    required this.productModel,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100.0,
      width: size.width,
      child: Row(
        children: [
          Checkbox(
            value: false,
            onChanged: (bool? value) {},
          ),
          SizedBox(
            width: 15.0,
          ),
          ClipRRect(
            child: Image.asset(
              widget.productModel.productImage,
              height: 100.0,
              width: 100.0,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  widget.productModel.productName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '\$${widget.productModel.price}',
                      style: Theme.of(context).textTheme.titleMedium!.copyWith(
                            color: AppColors.lightRed,
                          ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 4.0,
                      ),
                      width: 90.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          30.0,
                        ),
                        border: Border.all(
                          color: AppColors.grayColor,
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.remove,
                              size: 20.0,
                            ),
                          ),
                          Text(
                            '2',
                          ),
                          InkWell(
                            onTap: () {},
                            child: Icon(
                              Icons.add,
                              size: 26.0,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
