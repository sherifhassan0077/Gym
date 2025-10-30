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
import 'package:gym/tricesps_T/code%20dart/Bench_Dips.dart';
import 'package:gym/tricesps_T/code%20dart/Bodyweight_Triceps.dart';
import 'package:gym/tricesps_T/code%20dart/CloseGrip_Bench.dart';
import 'package:gym/tricesps_T/code%20dart/Diamond_Push.dart';
import 'package:gym/tricesps_T/code%20dart/Dumbbell_Kickback.dart';
import 'package:gym/tricesps_T/code%20dart/Machine_Dips.dart';
import 'package:gym/tricesps_T/code%20dart/OneArm_Dumbbell.dart';
import 'package:gym/tricesps_T/code%20dart/Overhead_Triceps.dart';
import 'package:gym/tricesps_T/code%20dart/Reverse_Grip.dart';
import 'package:gym/tricesps_T/code%20dart/Rope_Pushdown.dart';
import 'package:gym/tricesps_T/code%20dart/Seated_Triceps.dart';
import 'package:gym/tricesps_T/code%20dart/Single_Arm.dart';
import 'package:gym/tricesps_T/code%20dart/Skull_Crushers.dart';
import 'package:gym/tricesps_T/code%20dart/Triceps_Dips.dart';
import 'package:gym/tricesps_T/code%20dart/Triceps_Pushdown.dart';

class tricesps extends StatefulWidget {
  const tricesps({super.key});

  @override
  State<tricesps> createState() => _tricespsState();
}

class _tricespsState extends State<tricesps> {
final List<String> images = [
  'lib/tricesps_T/tricesps_images/Triceps_Dips.gif',
  'lib/tricesps_T/tricesps_images/Close_Grip_Bench_Press.gif',
  'lib/tricesps_T/tricesps_images/Skull Crushers (Lying Triceps Extension).gif',
  'lib/tricesps_T/tricesps_images/Overhead Triceps Extension.gif',
  'lib/tricesps_T/tricesps_images/Triceps Pushdown (Cable).gif',
  'lib/tricesps_T/tricesps_images/Dumbbell-Kickback.gif',
  'lib/tricesps_T/tricesps_images/Diamond Push-Ups.gif',
  'lib/tricesps_T/tricesps_images/Reverse Grip Triceps Pushdown (Cable).gif',
  'lib/tricesps_T/tricesps_images/Single-Arm Triceps Extension (Cable).gif',
  'lib/tricesps_T/tricesps_images/Seated Triceps Press.jpeg',
  'lib/tricesps_T/tricesps_images/Bench Dips.gif',
  'lib/tricesps_T/tricesps_images/Bodyweight Triceps Extension.gif',
  'lib/tricesps_T/tricesps_images/Triceps Machine Dips.gif',
  'lib/tricesps_T/tricesps_images/Rope Triceps Pushdown (Cable).jpeg',
  'lib/tricesps_T/tricesps_images/One-Arm Overhead Dumbbell Extension.gif',
];

final List<String> muscleNames = [
  'Triceps_Dips', // غطسات الترايسبس
  'CloseGrip_Bench', // تمرين ضغط بالمسكة الضيقة
  'Skull_Crushers', // تمرين تكسير الجمجمة
  'Overhead_Triceps', // تمديد الترايسبس فوق الرأس
  'Triceps_Pushdown', // سحب الترايسبس بالكابل
  'Dumbbell_Kickback', // تمرين الركلات الخلفية بالترايسبس
  'Diamond_Push', // تمرين الضغط الألماسي
  'Reverse_Grip', // سحب الترايسبس بالكابل بالمقبض المعكوس
  'Single_Arm', // تمديد الترايسبس بذراع واحدة بالكابل
  'Seated_Triceps', // ضغط الترايسبس أثناء الجلوس
  'Bench_Dips', // غطسات على المقعد
  'Bodyweight', // تمديد الترايسبس بوزن الجسم
  'Machine_Dips', // غطسات الترايسبس باستخدام الآلة
  'Rope_Pushdown', // سحب الترايسبس بالحبل
  'OneArm_Dumbbell', // تمديد الترايسبس بذراع واحدة فوق الرأس
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
                                  builder: (context) => const Triceps_Dips()));
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CloseGrip_Bench()));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Skull_Crushers()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Overhead_Triceps()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Triceps_Pushdown()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dumbbell_Kickback()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Diamond_Push()));
                          break;
                          case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Reverse_Grip()));
                          break;
                        case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Single_Arm()));
                          break;
                        case 9:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Seated_Triceps()));
                          break;
                        case 10:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Bench_Dips()));
                          break;
                        case 11:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Bodyweight_Triceps()));
                          break;
                        case 12:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Machine_Dips()));
                          break;
                           case 13:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Rope_Pushdown()));
                          break;
                           case 14:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OneArm_Dumbbell()));
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
