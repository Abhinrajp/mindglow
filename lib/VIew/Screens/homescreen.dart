import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Appcontroll/appstatecontroll.dart';
import 'package:mindglow/Controller/Services/authservices.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/Widgets/HomescreenWidgets/homescreenwidgets.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

final Authservices authservices = Authservices();
final Appstatecontroller appstatecontroller = Get.find();

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.transparent,
        body: Stack(children: [
          Container(
              height: MediaQuery.of(context).size.height / 1.7,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('lib/Assets/homebackground.webp'),
                      fit: BoxFit.cover,
                      opacity: .9),
                  gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [Colors.white, Colors.white]),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)))),
          Column(children: [
            homeAppbar(context),
            Expanded(child: homeBody(context))
          ])
        ]));
  }
}

AppBar homeAppbar(BuildContext context) {
  return AppBar(
    backgroundColor: Colors.transparent,
    elevation: 0,
    leading: Obx(() {
      final userdata = appstatecontroller.userData.value;
      Widget profileWidget;
      if (userdata?.profileimage.length == 1) {
        profileWidget = CircleAvatar(
            radius: 25,
            backgroundColor: Colors.green[300],
            child: Text(userdata!.profileimage,
                style: const TextStyle(color: Colors.white, fontSize: 20)));
      } else if (userdata?.profileimage == null) {
        profileWidget = const CircleAvatar(backgroundColor: Colors.green);
      } else if (userdata!.profileimage.isEmpty) {
        profileWidget = const CircleAvatar(backgroundColor: Colors.green);
      } else {
        profileWidget = Image.network(userdata.profileimage,
            height: 100.0, width: 100, fit: BoxFit.cover);
      }
      return Padding(
          padding: const EdgeInsets.only(left: 15),
          child: CircleAvatar(
              backgroundColor: Colors.transparent,
              radius: 30,
              child: ClipOval(child: profileWidget)));
    }),
    title: Obx(() {
      return Customtext(
          text: appstatecontroller.userData.value?.name ?? '',
          fontWeight: FontWeight.bold);
    }),
    actions: [
      IconButton(
          onPressed: () {
            authservices.signout(context);
          },
          icon: const Icon(
            Icons.exit_to_app_rounded,
            color: Colors.white,
          ))
    ],
  );
}

Widget homeBody(BuildContext context) {
  var dailyChallenge = getMoodVideoUri(dailyChallengesList);
  return SingleChildScrollView(
    child: Column(children: [
      meditationPart(context),
      DailyChallenge(dailyChallenge),
      const SizedBox(height: 16),
      const MoodTracker()
    ]),
  );
}
