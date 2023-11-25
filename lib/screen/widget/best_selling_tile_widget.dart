import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class BestSellingListTileWidget extends StatelessWidget {
  final String productName;
  final String asset;
  final String price;
  final VoidCallback onTap;
  const BestSellingListTileWidget({
    super.key,
    required this.productName,
    required this.asset,
    required this.price,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(
        18.0,
      ),
      width: size.width * 83.0,
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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            child: Image.asset(
              asset,
              height: 75.0,
              width: 75.0,
              fit: BoxFit.fill,
            ),
          ),
          const SizedBox(
            width: 20.0,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                productName,
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
                price,
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
              ),
            ],
          ),
          const Spacer(),
          Align(
            alignment: Alignment.bottomRight,
            child: InkWell(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.all(
                  6.0,
                ),
                decoration: BoxDecoration(
                  color: AppColors.buttonColor,
                  borderRadius: BorderRadius.circular(
                    10.0,
                  ),
                ),
                child: Icon(
                  Icons.arrow_forward,
                  color: AppColors.whiteColor,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
