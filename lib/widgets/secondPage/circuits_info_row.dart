import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class CircuitsInfoRow extends StatelessWidget {
  const CircuitsInfoRow({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Text(
          "Circuit 1: Legs Toning",
          style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: AppColor.circuitsColor),
        ),
        Expanded(child: Container()),
        const Icon(
          Icons.loop_rounded,
          color: AppColor.loopColor,
        ),
        const Text(" 3 Sets  "),
      ],
    );
  }
}
