import 'package:flutter/material.dart';
import 'package:flutter_application_1/res/assets/app_asets.dart';
import 'package:flutter_application_1/res/colors/app_color.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.backGoundColor,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  AppAssets.menuIcon,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
