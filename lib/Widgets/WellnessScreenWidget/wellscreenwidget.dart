import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/Model/wellnessmodel.dart';
import 'package:mindglow/VIew/Screens/WellnessScreen/healthtypedetailsreen.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class WellNessScreenWidgeet {
  Widget healthBuilders() {
    return CarouselSlider.builder(
        itemCount: 5,
        itemBuilder: (context, index, realIndex) {
          var data = healthList[index];
          return GestureDetector(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return showWellNessCard(data, context);
                    });
              },
              child: cardForWellness(data));
        },
        options: CarouselOptions(
            height: 350,
            aspectRatio: 16 / 9,
            autoPlay: true,
            reverse: false,
            autoPlayInterval: const Duration(seconds: 5),
            autoPlayAnimationDuration: const Duration(milliseconds: 800),
            enlargeCenterPage: true,
            initialPage: 0));
  }

  Widget cardForWellness(WellnessModel data) {
    return Card(
        color: Colors.white,
        elevation: 0,
        child: Container(
            height: 350,
            width: 350,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: data.color),
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Customtext(
                          text: data.title,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontsize: 16),
                      SizedBox(height: 150, child: Image.asset(data.imgUrl)),
                      Customtext(
                          text: data.describtion,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontsize: 11)
                    ]))));
  }

  Widget showWellNessCard(WellnessModel data, BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(15),
        child: Container(
            height: 200,
            decoration: BoxDecoration(
                borderRadius: const BorderRadius.all(Radius.circular(30)),
                color: data.color.withOpacity(.5)),
            child: Padding(
                padding: const EdgeInsets.all(15),
                child: Column(children: [
                  Row(children: [
                    IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: const Icon(Icons.arrow_back, color: Colors.black))
                  ]),
                  Customtext(
                      text: data.title,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 16),
                  SizedBox(height: 150, child: Image.asset(data.imgUrl)),
                  Customtext(
                      text: data.longDescribtion,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontsize: 11)
                ]))));
  }

  Widget tipBuilderForWellness() {
    return ListView.builder(
        itemBuilder: (context, index) {
          var data = typesOfHealth[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) =>
                          HealthTypeDetailsScreen(wellnessModelDaily: data)));
            },
            child: Card(
                child: Container(
                    decoration: BoxDecoration(
                        color: data.color,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10))),
                    height: 80,
                    child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: 50,
                                  width: 70,
                                  child: Image.asset(data.mainImgUri)),
                              const SizedBox(width: 20),
                              Customtext(
                                  text: data.title,
                                  fontWeight: FontWeight.bold,
                                  fontsize: 14),
                              Icon(data.iconData)
                            ])))),
          );
        },
        itemCount: 4);
  }
}
