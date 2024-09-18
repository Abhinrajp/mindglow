import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/VIew/Screens/Home/mooddetailscreen.dart';
import 'package:mindglow/VIew/Video/youtubevideopl.dart';
import 'package:mindglow/Widgets/authwidgets.dart';

Widget meditationPart(BuildContext context) {
  return Stack(children: [
    SizedBox(
        height: 300, child: LottieBuilder.asset('lib/Assets/flDOxDueIQ.json')),
    const Positioned(
        left: 85,
        child: Customtext(
            text: 'Meditate Now', fontWeight: FontWeight.bold, fontsize: 16)),
    Positioned(
        left: 120,
        bottom: 10,
        child: IconButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const YoutubeVideoForMeditaion(
                          videoUrl:
                              'https://www.youtube.com/watch?v=j734gLbQFbU')));
            },
            icon: const Icon(Icons.play_circle_outline,
                size: 40, color: Colors.white)))
  ]);
}

class DailyChallenge extends StatefulWidget {
  final String challengeText;

  const DailyChallenge(this.challengeText, {super.key});

  @override
  State<DailyChallenge> createState() => _DailyChallengeState();
}

class _DailyChallengeState extends State<DailyChallenge>
    with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Animation<Color?> colorAnimation;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    colorAnimation = ColorTween(
      begin: const Color(0xFFFFD700),
      end: Colors.grey,
    ).animate(controller);
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: colorAnimation,
        builder: (context, child) {
          return GestureDetector(
              onTap: () {
                var videoUrl = getMoodVideoUri(dailyChallengesVideoList);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) =>
                            YoutubeVideoForMeditaion(videoUrl: videoUrl)));
              },
              child: Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(40),
                          bottomRight: Radius.circular(40)),
                      gradient: const LinearGradient(
                          begin: Alignment.centerLeft,
                          end: Alignment.centerRight,
                          colors: [
                            Color.fromARGB(255, 181, 222, 183),
                            Colors.white
                          ]),
                      border: Border.all(
                          color: colorAnimation.value ?? Colors.transparent,
                          width: 3)),
                  child: Column(children: [
                    const Customtext(
                        text: 'Today’s Challenge',
                        fontsize: 24,
                        fontWeight: FontWeight.bold),
                    const SizedBox(height: 8),
                    Customtext(
                        text: widget.challengeText,
                        fontsize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.blueGrey.shade600)
                  ])));
        });
  }
}

String getMoodVideoUri(List<String> listOfMaterials) {
  int currentDay = DateTime.now().weekday;
  switch (currentDay) {
    case 1:
      return listOfMaterials[0];
    case 2:
      return listOfMaterials[1];
    case 3:
      return listOfMaterials[2];
    case 4:
      return listOfMaterials[3];
    case 5:
      return listOfMaterials[4];
    case 6:
      return listOfMaterials[5];
    case 7:
      return listOfMaterials[6];
    default:
      return '';
  }
}

class MoodTracker extends StatelessWidget {
  const MoodTracker({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
      const Customtext(
          text: 'How is your Mood today',
          fontWeight: FontWeight.bold,
          fontsize: 16),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        moodContainer(const Icon(Icons.sentiment_very_satisfied, size: 100),
            "Happy", context),
        moodContainer(
            const Icon(Icons.sentiment_neutral, size: 100), "Neutral", context)
      ]),
      Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        moodContainer(const Icon(Icons.sentiment_dissatisfied, size: 100),
            "Gloomy", context),
        moodContainer(const Icon(Icons.sentiment_very_dissatisfied, size: 100),
            "Sad", context)
      ])
    ]);
  }
}

Widget moodContainer(Icon icon, String text, BuildContext context) {
  return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => MoodDetailScreen(moodType: text)));
      },
      child: Container(
          height: 150,
          width: 150,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(30))),
          child:
              Column(children: [Center(child: icon), Customtext(text: text)])));
}
