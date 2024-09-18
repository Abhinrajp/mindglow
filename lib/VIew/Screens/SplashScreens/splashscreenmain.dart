import 'package:flutter/material.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/VIew/Screens/Auth/siginscreen.dart';
import 'package:mindglow/VIew/Screens/SplashScreens/onboardingscreenfirst.dart';
import 'package:mindglow/VIew/Screens/SplashScreens/onboardingscreensecond.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class Onboardscreen extends StatefulWidget {
  const Onboardscreen({super.key});

  @override
  State<Onboardscreen> createState() => _OnboardscreenState();
}

class _OnboardscreenState extends State<Onboardscreen> {
  final controller = PageController();
  bool isLastPage = false;
  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
          padding: const EdgeInsets.only(bottom: 50),
          child: PageView(
              controller: controller,
              onPageChanged: (value) {
                setState(() {
                  isLastPage = value == 1;
                });
              },
              children: const [
                Onboardscreenfirst(),
                Onboardscreensecond(),
              ]),
        ),
        bottomSheet: Container(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            height: 50,
            color: Colors.transparent,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SmoothPageIndicator(
                      controller: controller,
                      count: 2,
                      effect: const WormEffect(
                          dotColor: Colors.grey,
                          dotHeight: 12,
                          dotWidth: 12,
                          activeDotColor: primarycolor),
                      onDotClicked: (index) => controller.animateToPage(index,
                          duration: const Duration(seconds: 1),
                          curve: Curves.linear)),
                  isLastPage
                      ? GestureDetector(
                          child: const Text('Start >'),
                          onTap: () {
                            Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const Siginscreen()),
                                (route) => false);
                          },
                        )
                      : GestureDetector(
                          child: const Text('Got it >'),
                          onTap: () {
                            controller.nextPage(
                                duration: const Duration(seconds: 1),
                                curve: Curves.easeIn);
                          })
                ])));
  }
}
