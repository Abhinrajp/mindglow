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
List<WellnessModelDaily> typesOfHealth = [
  WellnessModelDaily(
      mainImgUri: 'lib/Assets/physical.png',
      videoUri: 'https://www.youtube.com/watch?v=AEPnYII8uSI',
      content: [
        'Cardiovascular',
        'Strength Training',
        'Flexibility and Stretching',
        'Balance Exercises',
        'Endurance Training',
        'Mobility Exercises'
      ],
      contentDescribtion: [
        ' Activities that increase your heart rate and improve the efficiency of the cardiovascular system in absorbing and transporting oxygen.Improves heart health, stamina, lung capacity, and endurance; helps in weight management; reduces the risk of heart diseases, stroke, and diabetes.',
        ' Exercises that involve working against resistance to build muscle strength and endurance.Increases muscle mass, strengthens bones, improves metabolism, and helps in body toning. Also supports joint health and improves posture.',
        'Exercises aimed at improving the range of motion of muscles and joints. Improves muscle elasticity, reduces the risk of injury, enhances posture and balance, and helps in relaxation and stress reduction.',
        ' Activities that enhance coordination and balance, crucial for injury prevention, especially as we age.Reduces the risk of falls, improves posture, coordination, and body control. It is particularly beneficial for elderly individuals.',
        'health refers to the condition of the body and its ability to perform daily activities without fatigue or physical ',
        'Activities focused on improving joint mobility and allowing for better movement efficiency.Enhances movement range, reduces stiffness, and prevents injury.'
      ],
      title: 'Physical Health',
      imgUrl: '',
      describtion:
          'Physical health refers to the condition of the body and its ability to perform daily activities without fatigue or physical stress. It involves maintaining proper nutrition, engaging in regular physical activity, getting sufficient rest, and attending to medical needs. Practicing preventive care, like routine check-ups and vaccinations, is essential for maintaining physical well-being. Keeping a balance between exercise, diet, and rest promotes a healthy body and reduces the risk of chronic diseases such as heart disease, diabetes, and obesity.',
      color: Colors.orange.withOpacity(.6),
      iconData: Icons.sports_gymnastics_rounded),
  WellnessModelDaily(
      mainImgUri: 'lib/Assets/mental.png',
      videoUri: 'https://www.youtube.com/watch?v=G0zJGDokyWQ',
      content: [
        'Psychotherapy',
        'Counseling',
        'Mindfulness and Meditation',
        'Art and Creative Therapies',
        'Lifestyle and Holistic Approaches',
        'Psychoeducation'
      ],
      contentDescribtion: [
        ' A therapeutic treatment that involves talking with a trained mental health professional to explore emotions, thoughts, and behaviors.Helps people manage intense emotions and improve relationships.',
        'Similar to therapy, counseling offers a safe space to discuss mental health challenges, often focusing on specific issues like stress, grief, or relationship problems.Aims to improve communication and resolve conflicts between partners.',
        ' Practices that encourage self-awareness and help individuals manage stress and anxiety by staying present in the moment. Focuses on breathing and observing thoughts without judgment.',
        'Therapies that use creative expression to help people explore and communicate emotions.Uses drawing, painting, or sculpting to help express emotions and process trauma.',
        ' Focus on improving mental health through holistic and lifestyle changes. Physical activity, especially aerobic exercise, is known to reduce anxiety and improve mood.Combines physical postures, breathing exercises, and meditation to promote mental relaxation and emotional balance.',
        ' Involves educating individuals about their mental health condition to empower them to manage symptoms effectively. Helps family members understand the condition and how to support their loved one.'
      ],
      title: 'Mental Health',
      imgUrl: '',
      describtion:
          'Mental health encompasses emotional, psychological, and social well-being. It affects how we think, feel, and behave in our daily lives. Good mental health helps people cope with stress, build relationships, and make decisions. It involves managing emotions, maintaining self-esteem, and addressing mental disorders such as anxiety or depression. Mental health is integral to our overall well-being, and it can be nurtured through therapy, mindfulness practices, and support systems that promote resilience and emotional regulation.',
      color: Colors.indigo.withOpacity(.6),
      iconData: Icons.psychology),
  WellnessModelDaily(
      mainImgUri: 'lib/Assets/environmental.png',
      videoUri: 'https://www.youtube.com/watch?v=7TL9_VpEPbA',
      content: [
        'Air Quality Management',
        'Water Quality Management',
        'Waste Management',
        'Soil and Land Management',
        'Noise Pollution Control',
        'Radiation Protection'
      ],
      contentDescribtion: [
        'Focuses on monitoring and improving the air we breathe by reducing pollution from industrial, vehicular, and other sources.Educating the public about the health impacts of air pollution',
        ' Involves ensuring access to clean and safe drinking water, managing wastewater, and protecting water bodies from pollution.Monitoring drinking water sources and wastewater treatment facilities.',
        'Concerned with the proper disposal, recycling, and management of waste to reduce pollution and health hazards.Collection and disposal of solid and hazardous waste.',
        'Involves protecting land from contamination, ensuring safe agricultural practices, and managing soil erosion and pollution.Preventing soil contamination from industrial activities and landfills.',
        'Involves regulating and reducing noise pollution in urban and industrial areas to protect human health and the environment.Monitoring noise levels in cities and near industrial sites.',
        'Focuses on regulating and minimizing exposure to harmful radiation, both natural and man-made, to protect human health.Monitoring radiation levels from medical equipment, nuclear power plants, and industrial'
      ],
      title: 'Environmental Health',
      imgUrl: '',
      describtion:
          'Environmental health refers to the interaction between individuals and their surroundings, both natural and man-made. A healthy environment supports overall well-being by providing clean air, water, and living conditions that reduce exposure to toxins and pollutants. Practicing eco-friendly behaviors, such as recycling and conserving energy, not only protects the planet but also contributes to personal health. Maintaining a safe and nurturing home, work, and community environment plays a critical role in supporting one’s physical and mental health.',
      color: Colors.green.withOpacity(.6),
      iconData: Icons.park),
  WellnessModelDaily(
      mainImgUri: 'lib/Assets/spiritual.png',
      videoUri: 'https://www.youtube.com/watch?v=IW-qtXaWzvM',
      content: [
        'Meditation and Mindfulness',
        'Prayer and Reflection',
        'Spiritual Reading and Study',
        'Rituals and Ceremonies',
        'Service and Compassion',
        'Self-Exploration and Personal Growth'
      ],
      contentDescribtion: [
        ' Practices that involve focusing the mind and achieving a state of mental clarity and calm. Meditation can help individuals connect with their inner self and achieve greater peace and understanding.',
        'Spiritual practices involving communication with a higher power or divine presence. Prayer and reflection help individuals find guidance, express gratitude, and seek comfort.',
        'Engaging with texts that explore spiritual, philosophical, or religious teachings. This practice helps individuals gain insights into their beliefs and deepen their understanding of spiritual concepts.',
        ' Engaging in structured practices that hold spiritual significance. Rituals and ceremonies often mark important life events and transitions, and they help individuals connect with their traditions.',
        'Engaging in acts of kindness and service to others as a way to foster spiritual growth and fulfillment. Helping others and practicing compassion can enhance one’s sense of purpose and connection.',
        ' Engaging in self-discovery and personal development to align with one’s spiritual values and goals. This can involve various introspective practices and self-improvement efforts.'
      ],
      title: 'Spiritual Health',
      imgUrl: '',
      describtion:
          '''Spiritual health relates to an individual's sense of purpose, meaning in life, and connection to something greater than oneself, whether through religion, personal beliefs, or a connection with nature. It fosters a sense of inner peace and harmony, often enhanced through practices such as meditation, prayer, or reflection. Spiritual health also involves living in alignment with one's values and beliefs, and many find fulfillment through service to others or engagement with community. Cultivating spiritual health contributes to overall life satisfaction and emotional well-being.''',
      color: Colors.blueGrey.withOpacity(.6),
      iconData: Icons.self_improvement)
];
