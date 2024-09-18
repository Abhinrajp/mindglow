import 'package:flutter/material.dart';

class WellnessModel {
  final String title;
  final String imgUrl;
  final String describtion;
  final String longDescribtion;
  final Color color;

  WellnessModel({
    required this.title,
    required this.imgUrl,
    required this.describtion,
    required this.longDescribtion,
    required this.color,
  });
}

class WellnessModelDaily {
  final String title;
  final String imgUrl;
  final String mainImgUri;
  final String describtion;
  final String videoUri;
  final List<String> content;
  final List<String> contentDescribtion;
  final Color color;
  final IconData iconData;

  WellnessModelDaily({
    required this.mainImgUri,
    required this.videoUri,
    required this.content,
    required this.contentDescribtion,
    required this.title,
    required this.imgUrl,
    required this.describtion,
    required this.color,
    required this.iconData,
  });
}
