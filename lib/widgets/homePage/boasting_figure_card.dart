import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class BoastingFigureCard extends StatelessWidget {
  const BoastingFigureCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomLeft,
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 1 / 8,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: AppColor.gradientSecond.withOpacity(.85),
                blurRadius: 15,
                offset: const Offset(10, 5),
              ),
            ],
            image: const DecorationImage(
              image: AssetImage("images/card.png"),
            ),
            borderRadius: const BorderRadius.all(
              Radius.circular(15),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
          child: Row(
            children: [
              const Image(
                height: 110,
                image: AssetImage(
                  "images/figure.png",
                ),
              ),
              const SizedBox(width: 15),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 25),
                  Text(
                    "You're doing Great",
                    style: TextStyle(
                      fontSize: 20,
                      color: AppColor.gradientFirst.withOpacity(0.9),
                    ),
                  ),
                  const SizedBox(height: 10),
                  const Text("Keep it Up"),
                  const Text("Stick to your Plan"),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
