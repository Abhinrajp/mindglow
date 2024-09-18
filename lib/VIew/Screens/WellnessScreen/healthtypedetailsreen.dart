import 'package:flutter/material.dart';
import 'package:mindglow/Model/wellnessmodel.dart';
import 'package:mindglow/Widgets/HealthTypeWidget/healthtypedetailwidget.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class HealthTypeDetailsScreen extends StatefulWidget {
  final WellnessModelDaily wellnessModelDaily;
  const HealthTypeDetailsScreen({super.key, required this.wellnessModelDaily});

  @override
  State<HealthTypeDetailsScreen> createState() =>
      _HealthTypeDetailsScreenState();
}

final HealthtypedetailWidget healthtypedetailWidget = HealthtypedetailWidget();

class _HealthTypeDetailsScreenState extends State<HealthTypeDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: healthDetailsAppbar(widget.wellnessModelDaily.title),
        body: healthDetailsBody(widget.wellnessModelDaily, context));
  }
}

AppBar healthDetailsAppbar(String title) {
  return AppBar(
      title: Customtext(text: title, fontWeight: FontWeight.bold, fontsize: 18),
      centerTitle: true);
}

Widget healthDetailsBody(WellnessModelDaily data, BuildContext context) {
  return Padding(
      padding: const EdgeInsets.all(15),
      child: healthtypedetailWidget.healthDetailbodyContent(data, context));
}
