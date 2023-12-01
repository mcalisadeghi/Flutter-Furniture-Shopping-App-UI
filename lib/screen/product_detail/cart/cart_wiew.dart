import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/app_bar_widget.dart';

class CartView extends StatefulWidget {
  const CartView({super.key});

  @override
  State<CartView> createState() => _CartViewState();
}

class _CartViewState extends State<CartView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGoundColor,
      appBar: AppBar(
        backgroundColor: AppColors.backGoundColor,
        elevation: 0,
        toolbarHeight: 90.0,
        automaticallyImplyLeading: false,
        title: AppaBarWidget(
          title: 'Cart',
        ),
        iconTheme: IconThemeData(
          color: AppColors.buttonColor,
        ),
      ),
    );
  }
}
