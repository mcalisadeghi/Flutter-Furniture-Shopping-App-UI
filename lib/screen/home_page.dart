import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

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
                      color: AppColors.buttonColor),
                  child: Icon(
                    Icons.person,
                    color: AppColors.whiteColor,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35.0,
            ),
            Row(
              children: [
                Expanded(
                  child: Container(
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: AppColors.whiteColor,
                      borderRadius: BorderRadius.circular(
                        12.0,
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.shadowColor,
                          spreadRadius: 2.0,
                          blurRadius: 4.0,
                          offset: const Offset(
                            -2.0,
                            -2.0,
                          ),
                        ),
                        BoxShadow(
                          color: AppColors.shadowColor,
                          spreadRadius: 2.0,
                          blurRadius: 4.0,
                          offset: Offset(
                            2.0,
                            2.0,
                          ),
                        ),
                      ],
                    ),
                    child: const TextField(),
                  ),
                ),
                const SizedBox(
                  width: 34.0,
                ),
                const Icon(
                  Icons.shopping_cart_outlined,
                  size: 29.0,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
