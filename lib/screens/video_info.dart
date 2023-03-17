import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:training_app/assets/colors.dart';
import 'package:training_app/widgets/secondPage/circuits_info_row.dart';
import 'package:training_app/widgets/secondPage/exercises_list.dart';
import 'package:training_app/widgets/secondPage/second_page_top.dart';

class VideoInfo extends StatefulWidget {
  const VideoInfo({super.key});

  @override
  State<VideoInfo> createState() => VideoInfoState();
}

class VideoInfoState extends State<VideoInfo> {
  List videoInfo = [];
  _initData() {
    DefaultAssetBundle.of(context).loadString("json/videoinfo.json").then(
      (value) {
        setState(() {
          videoInfo = json.decode(value);
        });
      },
    );
  }

  @override
  void initState() {
    super.initState();
    _initData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.topRight,
            colors: [
              AppColor.secondPageContainerGradient1stColor,
              AppColor.secondPageContainerGradient2ndColor,
            ],
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SecondPageTop(),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                padding: const EdgeInsets.symmetric(
                  horizontal: 15,
                  vertical: 25,
                ),
                decoration: const BoxDecoration(
                  color: AppColor.homePageBackground,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(60),
                  ),
                ),
                child: Column(
                  children: [
                    const CircuitsInfoRow(),
                    ExercisesList(videoInfo: videoInfo)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
