import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/dumy_product_lists.dart';
import 'package:flutter_application_1/screen/widget/explore_list_tile_widget.dart';
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
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 28.0,
            ),
            SizedBox(
              height: 320.0,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                padding: const EdgeInsets.all(
                  8.0,
                ),
                itemCount: DummyProductList.explorList.length,
                itemBuilder: (
                  BuildContext context,
                  int index,
                ) {
                  var product = DummyProductList.explorList[index];
                  return ExploreListTileWidget(
                    productName: product.productName,
                    assets: product.productImage,
                    price: product.price,
                  );
                },
                separatorBuilder: (
                  BuildContext context,
                  int child,
                ) =>
                    const SizedBox(
                  width: 14.0,
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              'Bst Selling',
              style: Theme.of(context).textTheme.titleLarge!.copyWith(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                  ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Container(
              padding: const EdgeInsets.all(
                14.0,
              ),
              decoration: BoxDecoration(
                color: AppColors.whiteColor,
                borderRadius: BorderRadius.circular(
                  30.0,
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
                    offset: const Offset(
                      2.0,
                      2.0,
                    ),
                  ),
                ],
              ),
              child: Row(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(
                      20.0,
                    ),
                    child: Image.asset(
                      AppAssets.productIcon5,
                      height: 75.0,
                      width: 75.0,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        'Item name',
                        style: Theme.of(context).textTheme.titleSmall!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w600,
                            ),
                      ),
                      const SizedBox(
                        height: 5.0,
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
                      Text(
                        'price',
                        style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w400,
                            ),
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
