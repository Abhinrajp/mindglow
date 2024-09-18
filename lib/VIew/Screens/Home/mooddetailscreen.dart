import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mindglow/Controller/Appcontroll/appstatecontroll.dart';
import 'package:mindglow/Widgets/MoodScreenWidget/moodscreenwidgets.dart';
import 'package:mindglow/Widgets/authwidgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MoodDetailScreen extends StatefulWidget {
  final String moodType;
  const MoodDetailScreen({super.key, required this.moodType});

  @override
  State<MoodDetailScreen> createState() => _MoodDetailScreenState();
}

final Appstatecontroller appstatecontroller = Get.find();

final MoodScreenWidgets moodScreenWidgets = MoodScreenWidgets();
late YoutubePlayerController controller;

class _MoodDetailScreenState extends State<MoodDetailScreen> {
  @override
  void initState() {
    var videoUri = moodScreenWidgets.getMoodVideoUri(widget.moodType);
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(videoUri);
    controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: false, mute: false));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: moodDetailAppbar(), body: moodDetailBody(widget.moodType));
  }
}

AppBar moodDetailAppbar() {
  return AppBar();
}

Widget moodDetailBody(String mood) {
  var name = appstatecontroller.userData.value!.name;
  return SingleChildScrollView(
      child: Padding(
          padding: const EdgeInsets.all(12),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Customtext(
                text: 'Hey $name', fontWeight: FontWeight.bold, fontsize: 22),
            const SizedBox(height: 10),
            moodScreenWidgets.getMoodParagraph(mood),
            const SizedBox(height: 20),
            const Customtext(
                text: "Watch this", fontWeight: FontWeight.bold, fontsize: 16),
            const SizedBox(height: 20),
            moodScreenWidgets.youtubeBody(controller)
          ])));
}
