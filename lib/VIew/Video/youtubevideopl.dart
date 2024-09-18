import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class YoutubeVideoForMeditaion extends StatefulWidget {
  final String videoUrl;
  const YoutubeVideoForMeditaion({super.key, required this.videoUrl});

  @override
  State<YoutubeVideoForMeditaion> createState() =>
      _YoutubeVideoForMeditaionState();
}

class _YoutubeVideoForMeditaionState extends State<YoutubeVideoForMeditaion> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    super.initState();
    final videoId = YoutubePlayer.convertUrlToId(widget.videoUrl);
    controller = YoutubePlayerController(
        initialVideoId: videoId!,
        flags: const YoutubePlayerFlags(autoPlay: true, mute: false));
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: youtubeAppbar(context),
        backgroundColor: Colors.black,
        body: youtubeBody(controller));
  }
}

AppBar youtubeAppbar(BuildContext context) {
  return AppBar(
      backgroundColor: Colors.black,
      leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back, color: Colors.white)));
}

Widget youtubeBody(YoutubePlayerController controller) {
  return Center(
      child: YoutubePlayer(
          controller: controller, showVideoProgressIndicator: true));
}
