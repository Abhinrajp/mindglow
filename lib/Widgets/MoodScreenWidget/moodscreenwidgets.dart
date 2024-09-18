import 'package:flutter/material.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';
import 'package:mindglow/Widgets/authwidgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MoodScreenWidgets {
  Widget getMoodParagraph(String mood) {
    switch (mood.toLowerCase()) {
      case 'happy':
        return const Customtext(
            text:
                "It's great to see you in high spirits! Embrace this positive energy and let it inspire you to achieve your goals. Remember, your happiness is contagious—share it with others and spread joy wherever you go.");

      case 'sad':
        return const Customtext(
            text:
                "It's okay to feel down sometimes. Take a moment to acknowledge your feelings and give yourself the space to heal. Remember, reaching out to friends or indulging in activities you love can help lift your spirits and bring a sense of relief.");

      case 'neutral':
        return const Customtext(
            text:
                "Sometimes it's neither high nor low; just a calm and steady feeling. Use this moment of equilibrium to reflect on your goals and plan your next steps. Balance is key, and it's a great time to focus on maintaining it.");

      case 'gloomy':
        return const Customtext(
            text:
                "Feeling gloomy can be tough, but it's important to recognize that these feelings are temporary. Try engaging in activities that uplift you or spend time with loved ones. Taking small steps to improve your mood can make a big difference.");

      default:
        return const Customtext(
            text:
                "It's important to acknowledge and address your mood. Whether you're feeling happy, sad, neutral, or gloomy, remember that it's okay to have these emotions. Take care of yourself and seek support if needed.");
    }
  }

  String getMoodVideoUri(String mood) {
    switch (mood.toLowerCase()) {
      case 'happy':
        return youtubeVideoOfMoods[0];
      case 'sad':
        return youtubeVideoOfMoods[3];
      case 'neutral':
        return youtubeVideoOfMoods[1];
      case 'gloomy':
        return youtubeVideoOfMoods[2];
      default:
        return '';
    }
  }

  Widget youtubeBody(YoutubePlayerController controller) {
    return YoutubePlayer(
        controller: controller, showVideoProgressIndicator: true);
  }
}
