import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class SecondPageTop extends StatelessWidget {
  const SecondPageTop({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15, right: 15, top: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              InkWell(
                onTap: () => {
                  Navigator.pop(context),
                },
                child: const Icon(
                  Icons.arrow_back_ios_new_rounded,
                  color: AppColor.secondPageTopIconColor,
                ),
              ),
              const Icon(
                Icons.info_outline_rounded,
                color: AppColor.secondPageTopIconColor,
              ),
            ],
          ),
          const SizedBox(height: 30),
          const Text(
            "Legs Toning",
            style: TextStyle(
              color: AppColor.secondPageTitleColor,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 15),
          const Text(
            "and Glutes Workout",
            style: TextStyle(
              color: AppColor.secondPageTitleColor,
              fontSize: 26,
            ),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColor.gradientSecond,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.timer_outlined,
                      color: AppColor.homePageContainerTextSmall,
                      size: 22,
                    ),
                    Text(
                      "  60 Minutes",
                      style: TextStyle(
                        color: AppColor.homePageContainerTextSmall,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(5),
                decoration: BoxDecoration(
                  color: AppColor.gradientSecond,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: const [
                    Icon(
                      Icons.construction_rounded,
                      color: AppColor.homePageContainerTextSmall,
                      size: 22,
                    ),
                    Text(
                      "  Resistent Band, Kettlebell",
                      style: TextStyle(
                        color: AppColor.homePageContainerTextSmall,
                        fontSize: 16,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
