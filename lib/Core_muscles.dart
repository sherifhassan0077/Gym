import 'package:flutter/material.dart';
import 'package:gym/back_T/cod%20dart/Barbell%20Row.dart';
import 'package:gym/back_T/cod%20dart/Cable%20Rows.dart';
import 'package:gym/back_T/cod%20dart/Deadlift.dart';
import 'package:gym/back_T/cod%20dart/Dumbbell%20Row.dart';
import 'package:gym/back_T/cod%20dart/Hyperextensions.dart';
import 'package:gym/back_T/cod%20dart/Inverted%20Rows.dart';
import 'package:gym/back_T/cod%20dart/Lat%20Pulldown.dart';
import 'package:gym/back_T/cod%20dart/Pull-ups.dart';
import 'package:gym/back_T/cod%20dart/Supported%20Row.dart';
import 'package:gym/back_T/cod%20dart/T-bar%20Row.dart';
import 'package:gym/bicesps_T/code%20dart/Barbell_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Cable_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Concentration_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/CrossBody_Hammer_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Dumbbell_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/EZBar_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Hammer_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Incline_Dumbbell.dart';
import 'package:gym/bicesps_T/code%20dart/OneArm_Dumbbell_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Preacher_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Reverse_Barbell.dart';
import 'package:gym/bicesps_T/code%20dart/Spider_Curl.dart';
import 'package:gym/bicesps_T/code%20dart/Zottman_Curl.dart';
import 'package:gym/core_muscles/dart%20code/Ball_Rollouts.dart';
import 'package:gym/core_muscles/dart%20code/Bear_Crawl.dart';
import 'package:gym/core_muscles/dart%20code/Bicycle_Crunches.dart';
import 'package:gym/core_muscles/dart%20code/Glute_Bridge.dart';
import 'package:gym/core_muscles/dart%20code/Handstand_Hold.dart';
import 'package:gym/core_muscles/dart%20code/Plank.dart';
import 'package:gym/core_muscles/dart%20code/Russian_Twists.dart';
import 'package:gym/core_muscles/dart%20code/Side_Plank.dart';
import 'package:gym/core_muscles/dart%20code/Weighted_Crunch.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Arnold_Press.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Barbell_Shoulder.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Bent_Over.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Cable_Fly.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Cable_Raises.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Dumbbell_Raises.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Dumbbell_Rear.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Dumbbell_Shoulder.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Dumbbell_Upright.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Face_Pulls.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Landmine_Press.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Lateral_Raises.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Machine_Raise.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Military_Press.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Overhead_Machine.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Push_Press.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Reverse_Deck.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Seated_Dumbbell.dart';
import 'package:gym/image/shoulder_T/code%20dart%20shoulder/Smith_Machine.dart';
import 'package:gym/muscles.dart';

class Core_muscles extends StatefulWidget {
  const Core_muscles({super.key});

  @override
  State<Core_muscles> createState() => _Core_musclesState();
}

class _Core_musclesState extends State<Core_muscles> {
  final List<String> images = [
   'lib/core_muscles/images/Weighted-Crunch.gif',
   'lib/core_muscles/images/plank.gif',
   'lib/core_muscles/images/Side_Plank.webp',
   'lib/core_muscles/images/Glute_Bridge.jpg',
   'lib/core_muscles/images/Swiss Ball Rollouts.gif',
   'lib/core_muscles/images/Bicycle_Crunches.gif',
   'lib/core_muscles/images/Russian_Twists.gif',
   'lib/core_muscles/images/Bear_Crawl.gif',
  ];

  final List<String> muscleNames = [
'Weighted_Crunch', //(الكرانش)  
'Plank', //(البلانك)
'Side_Plank' ,//(البلانك الجانبي)
'Glute_Bridge', //(الجسر)
'Ball_Rollouts', //(التمرين باستخدام الكرة السويسرية)
'Bicycle_Crunches', //(ركلة الدراجة)
'Handstand_Hold', //(الوقوف على اليدين)
'Russian_Twists', //(الدوران الروسي)
'Bear_Crawl' ,//(الزحف)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/image/background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 40),
            Text(
              'Back',
              style: TextStyle(fontSize: 50),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 50),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                ),
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0),
                      elevation: 6,
                    ),
                    onPressed: () {
                      // Navigate based on the index
                      switch (index) {
                        case 0:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Weighted_Crunch()));
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Plank()));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Side_Plank()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Glute_Bridge()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Ball_Rollouts()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Bicycle_Crunches()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Handstand_Hold()));
                          break;
                          case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Russian_Twists()));
                          break;
                        case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Bear_Crawl()));
                          break;                   
                      }
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(
                          images[index],
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(height: 10),
                        Text(
                          muscleNames[index],
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
