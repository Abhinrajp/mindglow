import 'package:flutter/material.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/Widgets/WellnessScreenWidget/wellscreenwidget.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class Wellnessscreen extends StatefulWidget {
  const Wellnessscreen({super.key});

  @override
  State<Wellnessscreen> createState() => _WellnessscreenState();
}

final WellNessScreenWidgeet wellNessScreenWidgeet = WellNessScreenWidgeet();

class _WellnessscreenState extends State<Wellnessscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(slivers: [
      SliverAppBar(
          expandedHeight: MediaQuery.of(context).size.height / 7.5,
          flexibleSpace: FlexibleSpaceBar(
              background: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          colors: [
                            primarycolor,
                            Colors.white,
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter),
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30))),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset('lib/Assets/ligthimg.png',
                            height: 50, width: 50),
                        const Customtext(
                            text: 'Tips and Tricks For Wellness',
                            fontWeight: FontWeight.bold,
                            fontsize: 16)
                      ])))),
      SliverFillRemaining(
          child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Customtext(
                      text: 'Life cycle of Wellness',
                      fontsize: 14,
                      fontWeight: FontWeight.w700),
                  const SizedBox(height: 15),
                  wellNessScreenWidgeet.healthBuilders()
                ],
              )))
    ]));
  }
}
