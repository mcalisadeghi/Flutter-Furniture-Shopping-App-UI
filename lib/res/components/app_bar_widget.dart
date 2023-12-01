import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/widget/shopping_cart_widget.dart';

class AppaBarWidget extends StatelessWidget {
  const AppaBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back,
            size: 28.0,
          ),
        ),
        Text(
          'Product',
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 18.0,
              ),
        ),
        ShoppingCartWidget(
          onTab: () {},
        ),

        // 16:38
      ],
    );
  }
}
