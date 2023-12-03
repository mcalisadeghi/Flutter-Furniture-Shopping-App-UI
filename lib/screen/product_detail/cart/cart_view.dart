import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/app_bar_widget.dart';
import 'package:flutter_application_1/res/components/custom_button.dart';
import 'package:flutter_application_1/res/components/dumy_product_lists.dart';
import 'package:flutter_application_1/screen/product_detail/cart/widget/bottom_text_widget.dart';
import 'package:flutter_application_1/screen/product_detail/cart/widget/cart_item_widget.dart';

class Cartview extends StatefulWidget {
  const Cartview({super.key});

  @override
  State<Cartview> createState() => _CartviewState();
}

class _CartviewState extends State<Cartview> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.backGoundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backGoundColor,
        elevation: 0,
        toolbarHeight: 90.0,
        automaticallyImplyLeading: false,
        title: const AppaBarWidget(
          title: 'Cart',
        ),
        iconTheme: IconThemeData(
          color: AppColors.buttonColor,
        ),
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 30.0,
          ), //28:58
          SizedBox(
            height: size.height * 0.43,
            child: ListView.separated(
              itemCount: DummyProductList.cartList.length,
              shrinkWrap: true,
              padding: const EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              separatorBuilder: (
                BuildContext context,
                int snapshot,
              ) =>
                  const SizedBox(
                height: 15.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CartItemWidget(
                  productModel: DummyProductList.cartList[index],
                  index: index,
                );
              },
            ),
          ),
          const SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(
                    50.0,
                  ),
                  topRight: Radius.circular(
                    50.0,
                  ),
                ),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                    color: AppColors.shadowColor,
                    spreadRadius: 6.0,
                    blurRadius: 5.0,
                    offset: const Offset(
                      -5.0,
                      -4.0,
                    ),
                  ),
                ],
              ),
              child: Column(
                children: [
                  const BottomTextWidget(
                    leadingText: 'Selected Items',
                    price: '200.0',
                    isSubT: false,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  const BottomTextWidget(
                    leadingText: 'Shipping Fee',
                    price: '30.0',
                    isSubT: false,
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Divider(
                    color: AppColors.grayColor,
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  const BottomTextWidget(
                    leadingText: 'Subtotal',
                    price: '230.0',
                    isSubT: true,
                  ),
                  const SizedBox(
                    height: 22.0,
                  ),
                  // check out button
                  CustomButton(
                    width: size.width * 0.7,
                    onTap: () {},
                    title: 'Checkout',
                  ),
                  const SizedBox(
                    height: 14.0,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
