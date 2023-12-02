import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class CustomVutton extends StatelessWidget {
  double? width = 55.0;
  double? height = 55.0;
  final VoidCallback onTap;
  final String title;
  CustomVutton({
    super.key,
    this.height,
    this.width,
    required this.onTap,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: height,
        width: width,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: AppColors.buttonColor,
          borderRadius: BorderRadius.circular(
            30.0,
          ),
        ),
        child: Text(
          title,
          style: Theme.of(context).textTheme.titleMedium!.copyWith(
                color: AppColors.whiteColor,
              ),
        ),
      ),
    );
  }
}
