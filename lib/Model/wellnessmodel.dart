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
