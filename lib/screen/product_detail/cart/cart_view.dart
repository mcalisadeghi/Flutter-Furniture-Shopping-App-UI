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
          Row(
            children: [
              Checkbox(
                value: false,
                onChanged: (bool? value) {},
              ),
              ClipRRect(
                child: Image.asset(
                  AppAssets.productIcon5,
                  height: 100.0,
                  width: 100.0,
                  fit: BoxFit.fill,
                ),
              ),
              Column(
                children: [
                  const Text(
                    'Item Name',
                  ),
                  Row(
                    children: [
                      const Text(
                        '\$300.0',
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: AppColors.grayColor,
                          ),
                        ),
                        child: const Row(
                          children: [
                            Icon(
                              Icons.remove,
                              size: 20.0,
                            ),
                            Text(
                              '2',
                            ),
                            Icon(
                              Icons.add,
                              size: 26.0,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ), //26:48
            ],
          ),
        ],
      ),
    );
  }
}
