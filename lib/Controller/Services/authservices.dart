import 'dart:developer';
import 'dart:io';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/Model/usermodel.dart';
import 'package:mindglow/VIew/Screens/Auth/loginscreen.dart';
import 'package:mindglow/VIew/Screens/Home/homebottomnavigation.dart';
import 'package:mindglow/Widgets/Showwidget/showdialoge.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Authservices {
  signout(BuildContext context) async {
    final user = FirebaseAuth.instance.currentUser!.email;
    await FirebaseAuth.instance.signOut();
    showCustomSnackBar(
        title: 'Logout', msg: 'Logout from $user', bgcolor: Colors.red);
    Navigator.pushAndRemoveUntil(
      context,
      MaterialPageRoute(builder: (context) => const Loginscreen()),
      (route) => false,
    );
  }

  Future<Usermodel> fetchuser() async {
    final user = FirebaseAuth.instance.currentUser;
    final data = await FirebaseFirestore.instance
        .collection('users')
        .doc(user?.uid)
        .get();
    final userdata = Usermodel(data['name'], data['profileimage']);
    return userdata;
  }

  sigup(String email, String password, BuildContext context) async {
    log(email);
    log(password);

    String username = email.split('@')[0];
    String firstLetter = email[0].toUpperCase();
    try {
      UserCredential userCredential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);

      log(username);
      log(firstLetter);
      User? user = userCredential.user;
      await FirebaseFirestore.instance.collection('users').doc(user?.uid).set({
        'id': user?.uid,
        'name': username,
        'profileimage': firstLetter,
        'password': password
      });
      Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
            builder: (context) => const Homebottomnavigationbar()),
        (route) => false,
      );
    } catch (e) {
      log(e.toString());
      showCustomSnackBar(
          bgcolor: primarycolor, title: 'Error', msg: e.toString());
    }
  }
}
