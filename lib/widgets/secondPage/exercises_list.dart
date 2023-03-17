import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';

class ExercisesList extends StatelessWidget {
  const ExercisesList({
    super.key,
    required this.videoInfo,
  });

  final List videoInfo;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .55,
      child: videoInfo.isEmpty
          ? const Center(
              child: CircularProgressIndicator(),
            )
          : ListView.builder(
              itemCount: videoInfo.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(bottom: 15),
                  child: Row(
                    children: [
                      Image(
                        alignment: Alignment.center,
                        image: AssetImage(
                          videoInfo[index]['thumbnail'],
                        ),
                      ),
                      const SizedBox(width: 10),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            videoInfo[index]['title'],
                            style: const TextStyle(
                                color: AppColor.circuitsColor,
                                fontWeight: FontWeight.w700,
                                fontSize: 18),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            videoInfo[index]['time'],
                            style: const TextStyle(
                                color: AppColor.setsColor,
                                fontWeight: FontWeight.w500,
                                fontSize: 16),
                          ),
                        ],
                      ),
                    ],
                  ),
                );
              },
            ),
    );
  }
}
