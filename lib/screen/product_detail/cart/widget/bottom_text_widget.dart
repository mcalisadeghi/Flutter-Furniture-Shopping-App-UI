import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';
import 'package:flutter_application_1/res/components/dumy_product_lists.dart';

class BottomTextWidget extends StatelessWidget {
  final String leadingText;
  final String price;
  final bool isSubT;
  const BottomTextWidget({
    super.key,
    required this.leadingText,
    required this.price,
    required this.isSubT,
  });

  @override
  Widget build(BuildContext context) {
    var newPrice = DummyProductList.cartList.isEmpty ? '00.0' : price;
    return Row(
      children: [
        Text(
          leadingText,
          style: isSubT
              ? Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.buttonColor,
                    fontWeight: FontWeight.bold,
                  )
              : Theme.of(context).textTheme.titleMedium,
        ),
        Text(
          '\$$newPrice',
          style: isSubT
              ? Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.lightRed,
                    fontWeight: FontWeight.bold,
                  )
              : Theme.of(context).textTheme.titleMedium!.copyWith(
                    color: AppColors.lightRed,
                    fontSize: 18.0,
                  ),
        ),
      ],
    );
  }
}
