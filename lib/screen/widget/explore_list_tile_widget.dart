import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class ExploreListTileWidget extends StatelessWidget {
  const ExploreListTileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(
        12.0,
      ),
      width: 180.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          20.0,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(
              20.0,
            ),
            child: AspectRatio(
              aspectRatio: 3 / 3.5,
              child: Image.asset(
                AppAssets.productIcon1,
              ),
            ),
          ),
          const SizedBox(
            height: 12.0,
          ),
          Text(
            'Item Name',
            style: Theme.of(context).textTheme.titleSmall!.copyWith(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
          ),
          const SizedBox(
            height: 3.0,
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
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '\$250.00',
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                    ),
              ),
              CircleAvatar(
                radius: 15.0,
                backgroundColor: AppColors.buttonColor,
                child: const Icon(
                  Icons.add,
                  size: 20.0,
                ),
              ),
              const SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
