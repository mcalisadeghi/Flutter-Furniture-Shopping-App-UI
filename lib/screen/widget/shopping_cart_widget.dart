import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class ShoppingCartWidget extends StatelessWidget {
  final VoidCallback onTab;
  const ShoppingCartWidget({
    super.key,
    required this.onTab,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTab,
      child: Stack(
        alignment: Alignment.topRight,
        clipBehavior: Clip.none,
        children: [
          const Icon(
            Icons.shopping_cart_outlined,
            size: 29.0,
          ),
          Positioned(
            top: -4.0,
            right: -4,
            child: Icon(
              Icons.circle,
              color: AppColors.redColor,
              size: 16.0,
            ),
          ),
        ],
      ),
    );
  }
}
