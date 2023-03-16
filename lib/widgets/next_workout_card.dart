import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class NextWorkoutCard extends StatelessWidget {
  const NextWorkoutCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 1 / 4,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(10),
          topLeft: Radius.circular(10),
          bottomRight: Radius.circular(10),
          topRight: Radius.circular(75),
        ),
        gradient: LinearGradient(
          colors: [
            AppColor.gradientFirst,
            AppColor.gradientSecond.withOpacity(0.9),
          ],
          begin: Alignment.bottomLeft,
          end: Alignment.topRight,
        ),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  "Next Workout",
                  style: TextStyle(
                    color: AppColor.homePageContainerTextSmall,
                    fontSize: 16,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Legs Toning",
                  style: TextStyle(
                    color: AppColor.homePageContainerTextBig,
                    fontSize: 24,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "and Glutes Workout",
                  style: TextStyle(
                    color: AppColor.homePageContainerTextBig,
                    fontSize: 24,
                  ),
                ),
              ],
            ),
            Row(
              textBaseline: TextBaseline.alphabetic,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                const Icon(
                  Icons.play_circle_fill_rounded,
                  size: 50,
                  color: AppColor.homePageContainerTextSmall,
                  shadows: [
                    BoxShadow(
                      color: AppColor.gradientFirst,
                      blurRadius: 15,
                      offset: Offset(5, 8),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
