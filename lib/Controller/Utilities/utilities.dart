// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

// import 'dart:nativewrappers/_internal/vm/lib/core_patch.dart';

import 'package:flutter/material.dart';
import 'package:mindglow/Model/wellnessmodel.dart';

const primarycolor = Color.fromARGB(255, 9, 145, 57);
List<String> youtubeVideoOfMoods = [
  'https://www.youtube.com/watch?v=W7_lafxj8ok',
  'https://www.youtube.com/watch?v=Adlk8E2UoUs',
  'https://www.youtube.com/watch?v=PaZ1EmPOE_k',
  'https://www.youtube.com/watch?v=hBzP8MtJf04',
];
List<String> dailyChallengesList = [
  'Mindful Breathing',
  'Body Scan Meditation',
  'Loving-Kindness Meditation',
  'Focused Attention Meditation',
  'Mindful Walking',
  'Gratitude Meditation',
  'Visualization Meditation'
];
List<String> dailyChallengesVideoList = [
  'https://www.youtube.com/watch?v=wPoj5log_7M',
  'https://www.youtube.com/watch?v=BlWo7sqWLNk',
  'https://www.youtube.com/watch?v=-d_AA9H4z9U',
  'https://www.youtube.com/watch?v=vBO8QEjANjs',
  'https://www.youtube.com/watch?v=aCwEwz1xU2M',
  'https://www.youtube.com/watch?v=xfD4HaBBc0I',
  'https://www.youtube.com/watch?v=NVPrxcR_RZI'
];
List<WellnessModel> healthList = [
  WellnessModel(
      title: 'Workouts',
      imgUrl: 'lib/Assets/workout.png',
      describtion: 'Boost your strength with daily workout routines.',
      longDescribtion:
          "Exercise is an essential component of physical and mental well-being. A well-rounded workout routine strengthens your muscles, enhances cardiovascular health, improves flexibility, and boosts energy levels. This wellness program focuses on creating personalized workout plans that cater to your fitness level, whether you're a beginner or an experienced athlete. It includes a variety of exercises such as strength training, cardio, flexibility workouts, and high-intensity interval training (HIIT). Regular physical activity not only helps in weight management but also reduces the risk of chronic diseases, boosts mood, and improves mental clarity. Through guided workout routines, tracking progress, and setting fitness goals, this program helps you stay motivated and reach your peak physical health.",
      color: const Color.fromARGB(255, 100, 196, 183)),
  WellnessModel(
      imgUrl: 'lib/Assets/diet.png',
      title: '  Nutrition',
      describtion: 'Maintain a balanced diet with healthy nutrition plans.',
      longDescribtion:
          "Nutrition plays a fundamental role in maintaining a healthy body and mind. A balanced diet provides the energy and nutrients necessary for growth, repair, and overall well-being. This wellness program offers personalized nutrition plans that take into account your dietary preferences, lifestyle, and health goals. Whether your focus is on weight loss, muscle gain, or simply improving your overall diet, the program provides meal suggestions, healthy recipes, and tips on portion control. You’ll learn how to incorporate the right mix of macronutrients—proteins, fats, and carbohydrates—as well as essential vitamins and minerals into your daily meals. Proper nutrition not only supports physical health but also boosts cognitive function, mood stability, and energy levels.",
      color: const Color.fromARGB(255, 116, 198, 221)),
  WellnessModel(
      imgUrl: 'lib/Assets/relaxing.png',
      title: '  Relaxing',
      describtion:
          'Recharge with relaxation exercises that calm the mind and body for rejuvenation.',
      longDescribtion:
          "Relaxation is vital for managing stress, reducing anxiety, and maintaining mental and physical health. The relaxation wellness program helps you unwind and rejuvenate by practicing mindful relaxation techniques, including deep breathing, progressive muscle relaxation, and mindfulness meditation. These practices help calm the nervous system, lower cortisol levels, and allow your mind to reset from the daily stresses of life. Whether it’s through a guided relaxation session, peaceful sounds, or gentle stretching exercises, you'll learn how to release tension from your body and mind, promoting a state of calm and inner peace. Relaxation isn't just about downtime; it's about enhancing your capacity to focus, reducing negative emotions, and improving overall resilience.",
      color: Colors.grey),
  WellnessModel(
      imgUrl: 'lib/Assets/reading.png',
      title: 'Knowldge',
      describtion:
          'Expand your horizons with new knowledge and intellectual growth opportunities.',
      longDescribtion:
          "Knowledge is the key to personal growth and intellectual development. By engaging in continuous learning, you expand your understanding of the world, develop new skills, and boost cognitive function. This wellness program provides you with daily opportunities to broaden your knowledge through reading, learning new skills, and absorbing information in areas like personal development, science, history, or even hobbies like cooking or creative arts. Whether it's through educational articles, podcasts, or interactive lessons, you can cultivate a curious mindset and promote lifelong learning. Stimulating your brain helps to keep it active and sharp, enhancing memory, creativity, and problem-solving abilities.",
      color: Colors.blueGrey),
  WellnessModel(
      imgUrl: 'lib/Assets/sleep.png',
      title: '    Sleep',
      describtion:
          'Improve your well-being by practicing proper sleep hygiene and restful techniques.',
      longDescribtion:
          "Sleep is one of the most crucial aspects of your overall well-being. Good sleep is essential for the body's recovery, mental clarity, and emotional balance. This wellness program focuses on improving the quality of your sleep through guided techniques such as meditation, relaxation, and breathing exercises. You'll learn about the importance of sleep hygiene—how your sleep environment, routine, and habits can affect your rest. The program provides strategies for winding down at night, establishing a consistent sleep schedule, and tackling common sleep disturbances like insomnia or stress-induced sleeplessness. By achieving restorative sleep, you can boost your energy levels, enhance memory, and support a stronger immune system.",
      color: Colors.indigo.shade900),
];
// List<WellnessModel> typesOfHealth() {WellnessModel(title: 
// 'Physical Health', imgUrl: 'lib/Assets/physical.png', describtion: describtion, longDescribtion: longDescribtion, color: color)}
