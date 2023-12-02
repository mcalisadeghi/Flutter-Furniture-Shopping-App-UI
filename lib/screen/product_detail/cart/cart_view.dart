import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/app_bar_widget.dart';
import 'package:flutter_application_1/res/components/dumy_product_lists.dart';
import 'package:flutter_application_1/screen/product_detail/cart/bottom_text_widget.dart';

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
              itemBuilder: (context, snapshot) {
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
                          AppAssets.productIcon5,
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
                              'Item Name',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '\$300.0',
                                  style: Theme.of(context)
                                      .textTheme
                                      .titleMedium!
                                      .copyWith(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
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
