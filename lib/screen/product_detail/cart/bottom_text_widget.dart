import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class BottomTextWidget extends StatelessWidget {
  final String leadingText;
  final String price;
  const BottomTextWidget({
    super.key,
    required this.leadingText,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          leadingText,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.lightRed,
                fontSize: 18.0,
              ),
        ),
        Text(
          '\$$price',
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.lightRed,
                fontSize: 18.0,
              ),
        ),
      ],
    );
  }
}
