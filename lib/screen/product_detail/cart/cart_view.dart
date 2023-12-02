import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/app_bar_widget.dart';

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
          ),
          SizedBox(
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
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
          ),
        ],
      ),
    );
  }
}
