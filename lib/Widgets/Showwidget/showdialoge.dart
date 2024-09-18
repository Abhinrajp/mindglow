import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';

void showCustomSnackBar(
    {String msg = '', String title = '', Color bgcolor = primarycolor}) {
  Get.snackbar(title, msg,
      colorText: Colors.white,
      backgroundColor: bgcolor,
      duration: const Duration(seconds: 4),
      snackPosition: SnackPosition.BOTTOM,
      borderRadius: 20,
      titleText: Text(title,
          style:
              const TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center),
      messageText: Center(
          child: Text(msg,
              style: const TextStyle(color: Colors.white),
              textAlign: TextAlign.center)),
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 3));
}
