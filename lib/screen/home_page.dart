import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/screen/widget/home_search_widget.dart';
import 'package:flutter_application_1/screen/widget/shopping_cart_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGoundColor,
      body: SafeArea(
        minimum: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ).copyWith(
          top: 40.0,
        ),
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppAssets.menuIcon,
                  width: 45.0,
                  fit: BoxFit.contain,
                ),
                Container(
                  height: 45.0,
                  width: 45.0,
                  padding: const EdgeInsets.all(
                    10.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      12.0,
                    ),
                    color: AppColors.buttonColor,
                  ),
                  child: Icon(
                    Icons.person,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 34.0,
            ),
            Row(
              children: [
                const Expanded(
                  child: HomeSearchWidget(),
                ),
                const SizedBox(
                  width: 34.0,
                ),
                ShoppingCartWidget(
                  onTab: () {},
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
