import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class HomePageTitle extends StatelessWidget {
  const HomePageTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Training",
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 30,
            color: AppColor.homePageTitle,
          ),
        ),
        Row(
          children: const [
            Icon(
              Icons.arrow_back_ios_rounded,
              color: AppColor.homePageIcons,
              size: 20,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: Icon(
                Icons.calendar_today_rounded,
                color: AppColor.homePageIcons,
                size: 20,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_rounded,
              color: AppColor.homePageIcons,
              size: 20,
            )
          ],
        ),
      ],
    );
  }
}
