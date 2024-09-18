import 'package:flutter/material.dart';
import 'package:mindglow/Model/wellnessmodel.dart';
import 'package:mindglow/VIew/Video/youtubevideopl.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class HealthtypedetailWidget {
  Widget healthDetailbodyContent(
      WellnessModelDaily data, BuildContext context) {
    return SingleChildScrollView(
        child: Column(children: [
      Stack(children: [
        SizedBox(height: 200, width: 300, child: Image.asset(data.mainImgUri)),
        Positioned(
            left: 120,
            top: 50,
            child: IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => YoutubeVideoForMeditaion(
                              videoUrl: data.videoUri)));
                },
                icon: Icon(Icons.play_circle_outline,
                    size: 50, color: Colors.grey.shade300)))
      ]),
      Customtext(text: data.describtion, fontsize: 13),
      const SizedBox(height: 20),
      const Row(children: [
        Customtext(
            text: 'Activities & Workouts',
            fontWeight: FontWeight.bold,
            fontsize: 20)
      ]),
      const SizedBox(height: 10),
      wellnessTypesContentBuilder(data)
    ]));
  }

  Widget wellnessTypesContentBuilder(WellnessModelDaily data) {
    return Column(
        children: List.generate(data.content.length, (index) {
      var content = data.content[index];
      var contentDescribtion = data.contentDescribtion[index];
      return Card(
          color: Colors.white,
          child: Container(
              decoration: BoxDecoration(
                  color: data.color,
                  boxShadow: const [
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(1, 2),
                        blurRadius: 2,
                        spreadRadius: 2)
                  ],
                  borderRadius: const BorderRadius.all(Radius.circular(20))),
              child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: Column(children: [
                    Customtext(
                        text: content,
                        fontWeight: FontWeight.bold,
                        fontsize: 16),
                    Customtext(
                        text: contentDescribtion, color: Colors.grey.shade800)
                  ]))));
    }));
  }
}
