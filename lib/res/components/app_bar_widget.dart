import 'package:flutter/material.dart';
import 'package:flutter_application_1/screen/product_detail/cart/cart_view.dart';
import 'package:flutter_application_1/screen/widget/shopping_cart_widget.dart';

class AppaBarWidget extends StatelessWidget {
  final String title;
  const AppaBarWidget({
    super.key,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
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
          title,
          style: Theme.of(context).textTheme.titleSmall!.copyWith(
                fontSize: 18.0,
              ),
        ),
        ShoppingCartWidget(
          onTab: () => Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => const Cartview(),
            ),
          ),
        ),
      ],
    );
  }
}
