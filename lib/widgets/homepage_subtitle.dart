import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class HomePageSubtitle extends StatelessWidget {
  const HomePageSubtitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const Text(
          "Your Program",
          style: TextStyle(
            fontSize: 18,
            color: AppColor.homePageSubtitle,
          ),
        ),
        Row(
          children: const [
            Text(
              "Details ",
              style: TextStyle(
                fontSize: 18,
                color: AppColor.homePageDetail,
              ),
            ),
            Icon(
              Icons.arrow_forward_rounded,
              color: AppColor.homePageIcons,
              size: 20,
            ),
          ],
        ),
      ],
    );
  }
}
