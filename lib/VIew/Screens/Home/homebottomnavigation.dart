import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Appcontroll/appstatecontroll.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/VIew/Screens/homescreen.dart';
import 'package:mindglow/VIew/Screens/libraryscreen.dart';
import 'package:mindglow/VIew/Screens/SupportScreens/supportscreen.dart';
import 'package:mindglow/VIew/Screens/WellnessScreen/wellnesscreen.dart';
import 'package:mindglow/Widgets/Showwidget/bottomcontainer.dart';

class Homebottomnavigationbar extends StatefulWidget {
  const Homebottomnavigationbar({super.key});

  @override
  State<Homebottomnavigationbar> createState() =>
      _HomebottomnavigationbarState();
}

class _HomebottomnavigationbarState extends State<Homebottomnavigationbar> {
  @override
  Widget build(BuildContext context) {
    final Appstatecontroller appstatecontroller = Get.put(Appstatecontroller());
    double displaywidth = MediaQuery.of(context).size.width;
    return Scaffold(
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        body: Obx(() {
          return IndexedStack(
              index: appstatecontroller.currentindex.value,
              children: const [
                Homescreen(),
                Wellnessscreen(),
                Libraryscreen(),
                Supportscreen()
              ]);
        }),
        bottomNavigationBar: Container(
            margin: EdgeInsets.all(displaywidth * .05),
            height: displaywidth * .155,
            decoration: BoxDecoration(
                color: Theme.of(context).scaffoldBackgroundColor,
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(.1),
                      blurRadius: 30,
                      offset: const Offset(0, 10))
                ],
                borderRadius: BorderRadius.circular(50)),
            child: ListView.builder(
                itemCount: 4,
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: displaywidth * .02),
                itemBuilder: (context, index) => Obx(() {
                      return InkWell(
                          onTap: () {
                            appstatecontroller.setcurrentindex(index);
                            HapticFeedback.lightImpact();
                          },
                          splashColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          child: Stack(children: [
                            Customeanimatedcontainer(
                                width: index ==
                                        appstatecontroller.currentindex.value
                                    ? displaywidth * 0.32
                                    : displaywidth * 0.18,
                                child: AnimatedContainer(
                                    duration: const Duration(seconds: 2),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    height: index ==
                                            appstatecontroller
                                                .currentindex.value
                                        ? displaywidth * 0.12
                                        : 0,
                                    width: index ==
                                            appstatecontroller
                                                .currentindex.value
                                        ? displaywidth * 0.32
                                        : 0,
                                    decoration: BoxDecoration(
                                        color: index ==
                                                appstatecontroller
                                                    .currentindex.value
                                            ? primarycolor
                                            : Colors.transparent,
                                        borderRadius:
                                            BorderRadius.circular(50)))),
                            Customeanimatedcontainer(
                                width: index ==
                                        appstatecontroller.currentindex.value
                                    ? displaywidth * 0.31
                                    : displaywidth * 0.18,
                                child: Stack(children: [
                                  Row(children: [
                                    Customeanimatedcontainer(
                                        width: index ==
                                                appstatecontroller
                                                    .currentindex.value
                                            ? displaywidth * 0.05
                                            : 0),
                                    AnimatedOpacity(
                                        opacity: index ==
                                                appstatecontroller
                                                    .currentindex.value
                                            ? 1
                                            : 0,
                                        duration: const Duration(seconds: 2),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                            index ==
                                                    appstatecontroller
                                                        .currentindex.value
                                                ? listofstring[index]
                                                : '',
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 14)))
                                  ]),
                                  Row(children: [
                                    Customeanimatedcontainer(
                                        width: index ==
                                                appstatecontroller
                                                    .currentindex.value
                                            ? displaywidth * 0.2
                                            : 20),
                                    Icon(listoficon[index],
                                        size: displaywidth * 0.076,
                                        color: index ==
                                                appstatecontroller
                                                    .currentindex.value
                                            ? Colors.white
                                            : Colors.black)
                                  ])
                                ]))
                          ]));
                    }))));
  }

  List<String> listofstring = ['Home', 'Well..', 'Libra..', 'Conne..'];
  List<IconData> listoficon = [
    Icons.home_rounded,
    Icons.health_and_safety_rounded,
    Icons.library_books,
    Icons.contact_phone_outlined
  ];
}
