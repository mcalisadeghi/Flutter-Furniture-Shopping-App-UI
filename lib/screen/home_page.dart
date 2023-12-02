import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/dumy_product_lists.dart';
import 'package:flutter_application_1/screen/product_detail/cart/cart_view.dart';
import 'package:flutter_application_1/screen/product_detail/product_detil.dart';
import 'package:flutter_application_1/screen/widget/best_selling_tile_widget.dart';
import 'package:flutter_application_1/screen/widget/explore_list_tile_widget.dart';
import 'package:flutter_application_1/screen/widget/home_search_widget.dart';
import 'package:flutter_application_1/screen/widget/shopping_cart_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGoundColor,
      body: SafeArea(
        minimum: const EdgeInsets.only(
          top: 40,
        ),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
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
              ),
              const SizedBox(
                height: 35.0,
              ),
              // search and card
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Row(
                  children: [
                    const Expanded(
                      child: HomeSearchWidget(),
                    ),
                    const SizedBox(
                      width: 34.0,
                    ),
                    ShoppingCartWidget(
                      onTab: () => Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const Cartview(),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 35.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 20.0,
                ),
                child: Text(
                  'Explore',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                height: 28.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: SizedBox(
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
                        productModel: product,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                productModel: product,
                              ),
                            ),
                          );
                        },
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
              ),
              const SizedBox(
                height: 20.0,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: Text(
                  'Bst Selling',
                  style: Theme.of(context).textTheme.titleLarge!.copyWith(
                        fontSize: 26.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              const SizedBox(
                height: 20.0,
              ),
              // Best selling section
              Padding(
                padding: const EdgeInsets.only(
                  left: 20.0,
                ),
                child: SizedBox(
                  height: 134.0,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(
                      8.0,
                    ),
                    itemCount: DummyProductList.bestsSellingList.length,
                    itemBuilder: (
                      BuildContext context,
                      int index,
                    ) {
                      var product = DummyProductList.bestsSellingList[index];
                      return BestSellingListTileWidget(
                        productName: product.productName,
                        asset: product.productImage,
                        price: product.price,
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => ProductDetail(
                                productModel: product,
                              ),
                            ),
                          );
                        },
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
              ),
              const SizedBox(
                height: 10.0,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
