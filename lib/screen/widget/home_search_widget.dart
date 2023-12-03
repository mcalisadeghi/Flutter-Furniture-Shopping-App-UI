import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class HomeSearchWidget extends StatelessWidget {
  const HomeSearchWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(
          12.0,
        ),
        boxShadow: <BoxShadow>[
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
      child: const TextField(),
    );
  }
}
