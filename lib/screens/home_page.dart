import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';
import 'package:training_app/widgets/homePage/area_of_focus.dart';
import 'package:training_app/widgets/homePage/boasting_figure_card.dart';
import 'package:training_app/widgets/homePage/homepage_subtitle.dart';
import 'package:training_app/widgets/homePage/homepage_title.dart';
import 'package:training_app/widgets/homePage/next_workout_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.homePageBackground,
      body: Container(
        padding: const EdgeInsets.only(top: 55, right: 15, left: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            HomePageTitle(),
            SizedBox(height: 30),
            HomePageSubtitle(),
            SizedBox(height: 20),
            NextWorkoutCard(),
            SizedBox(height: 10),
            BoastingFigureCard(),
            SizedBox(height: 15),
            Text(
              "Area of Focus",
              style: TextStyle(
                fontSize: 23,
                fontWeight: FontWeight.w500,
                color: AppColor.homePageTitle,
              ),
            ),
            SizedBox(height: 15),
            AreaOfFocus(),
          ],
        ),
      ),
    );
  }
}
