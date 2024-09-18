import 'package:flutter/material.dart';
import 'package:mindglow/Controller/Utilities/utilities.dart';

class Onboardscreensecond extends StatelessWidget {
  const Onboardscreensecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(children: [
      const Padding(
          padding: EdgeInsets.only(top: 120),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
            SizedBox(),
            Text('           MindGlow',
                style: TextStyle(
                    color: primarycolor, fontWeight: FontWeight.bold)),
            Padding(
                padding: EdgeInsets.zero,
                child: Text('skip >', style: TextStyle(fontSize: 11)))
          ])),
      const SizedBox(height: 50),
      const Text(' Make your Day as a Positive energy  ',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      const Text('with MindGlow',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      const SizedBox(height: 30),
      SizedBox(height: 360, child: Image.asset('lib/Assets/spiritual.png'))
    ]));
  }
}
