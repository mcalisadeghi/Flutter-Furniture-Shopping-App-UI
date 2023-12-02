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
          SizedBox(
            height: 30.0,
          ), //28:58
          SizedBox(
            height: size.height * 0.45,
            child: ListView.separated(
              itemCount: DummyProductList.cartList.length,
              shrinkWrap: true,
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
              ),
              separatorBuilder: (
                BuildContext context,
                int snapshot,
              ) =>
                  SizedBox(
                height: 15.0,
              ),
              itemBuilder: (BuildContext context, int index) {
                return CartItemWidget(
                  productModel: DummyProductList.cartList[index],
                );
              },
            ),
          ),
          SizedBox(
            height: 25.0,
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.only(
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
                    offset: Offset(
                      -5.0,
                      -4.0,
                    ),
                  ),
                ],
              ),
              child: Column(
                children: [
                  BottomTextWidget(
                    leadingText: 'Selected Items',
                    price: '200.0',
                    isSubT: false,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  BottomTextWidget(
                    leadingText: 'Shipping Fee',
                    price: '30.0',
                    isSubT: false,
                  ),
                  SizedBox(
                    height: 15.0,
                  ),
                  Divider(
                    color: AppColors.grayColor,
                  ),
                  SizedBox(
                    height: 25.0,
                  ),
                  BottomTextWidget(
                    leadingText: 'Subtotal',
                    price: '230.0',
                    isSubT: true,
                  ),
                  SizedBox(
                    height: 22.0,
                  ),
                  CustomButton(
                    onTap: () {},
                    title: 'Checkout',
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
