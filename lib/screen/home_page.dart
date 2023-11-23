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
          crossAxisAlignment: CrossAxisAlignment.start,
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
              height: 35.0,
            ),
            // search and card
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
            ),
            const SizedBox(
              height: 35.0,
            ),
            Text(
              'Explore',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            Container(
              padding: EdgeInsets.all(
                12.0,
              ),
              width: 180.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20.0,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    child: AspectRatio(
                      aspectRatio: 3 / 3.5,
                      child: Image.asset(
                        AppAssets.productIcon1,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12.0,
                  ),
                  Text(
                    'Item Name',
                    style: Theme.of(context).textTheme.titleSmall!.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                        ),
                  ),
                  const SizedBox(
                    height: 3.0,
                  ),
                  Text(
                    'Description',
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontWeight: FontWeight.w300,
                        ),
                  ),
                  const SizedBox(
                    height: 8.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '\$250.00',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
                      ),
                      CircleAvatar(
                        radius: 15.0,
                        backgroundColor: AppColors.buttonColor,
                        child: Icon(
                          Icons.add,
                          size: 20.0,
                        ),
                      ),
                      const SizedBox(
                        height: 5.0,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
