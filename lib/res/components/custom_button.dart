import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class CustomButton extends StatelessWidget {
  final double? width, height;
  final VoidCallback onTap;
  final String title;
  const CustomButton({
    super.key,
    this.height = 55.0,
    this.width = 55.0,
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
