import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/product/product_model.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/view_models/cart/cart_view_model.dart';

class CartItemWidget extends StatefulWidget {
  final int index;
  final ProductModel productModel;
  const CartItemWidget({
    super.key,
    required this.productModel,
    required this.index,
  });

  @override
  State<CartItemWidget> createState() => _CartItemWidgetState();
}

class _CartItemWidgetState extends State<CartItemWidget> {
  final cartVM = CartViewModel();
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: 100.0,
      width: size.width,
      child: Row(
        children: <Widget>[
          Checkbox(
            value: cartVM.selectedItems.containsKey(
              widget.index,
            ),
            onChanged: (bool? value) {
              if (cartVM.selectedItems.containsKey(widget.index)) {
                setState(
                  () {
                    cartVM.selectedItems.containsKey(
                      widget.index,
                    );
                  },
                );
              } else {
                setState(
                  () {
                    cartVM.selectedItems.addAll(
                      {widget.index: 1},
                    );
                  },
                );
              }
            },
            checkColor: AppColors.whiteColor,
            activeColor: AppColors.lightRed,
          ),
          const SizedBox(
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
              children: <Widget>[
                Text(
                  widget.productModel.productName,
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
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
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  cartVM.selectedItems.update(
                                    widget.index,
                                    (int value) =>
                                        value > 1 ? value - 1 : value,
                                  );
                                },
                              );
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 20.0,
                            ),
                          ),
                          Text(
                            cartVM.selectedItems[widget.index] != null
                                ? cartVM.selectedItems[widget.index].toString()
                                : '0',
                          ),
                          InkWell(
                            onTap: () {
                              setState(
                                () {
                                  cartVM.selectedItems.update(
                                    widget.index,
                                    (int value) => value + 1,
                                  );
                                },
                              );
                            },
                            child: const Icon(
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
