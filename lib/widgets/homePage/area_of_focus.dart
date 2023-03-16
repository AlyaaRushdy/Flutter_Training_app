import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

List<String> areasList = [
  'Glues',
  'Abs',
  'Legs',
  'Arms',
];

class AreaOfFocus extends StatelessWidget {
  const AreaOfFocus({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisExtent: 140,
        ),
        itemCount: 4,
        itemBuilder: (context, index) {
          return Row(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.45,
                //height: MediaQuery.of(context).size.height * 0.1,
                child: Card(
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(
                        image: AssetImage("images/ex${index + 1}.png"),
                        fit: BoxFit.scaleDown,
                      ),
                      Text(
                        areasList[index],
                        style: const TextStyle(
                          fontSize: 17,
                          color: AppColor.homePageDetail,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
