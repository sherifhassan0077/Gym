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
import 'package:gym/legs_T/code%20dart/Bulgarian_Split.dart';
import 'package:gym/legs_T/code%20dart/Calf_Raises.dart';
import 'package:gym/legs_T/code%20dart/Deadlift.dart';
import 'package:gym/legs_T/code%20dart/Glute_Bridge.dart';
import 'package:gym/legs_T/code%20dart/Hack_Squat.dart';
import 'package:gym/legs_T/code%20dart/Leg_Curl.dart';
import 'package:gym/legs_T/code%20dart/Leg_Extension.dart';
import 'package:gym/legs_T/code%20dart/Leg_Press.dart';
import 'package:gym/legs_T/code%20dart/Lunges.dart';
import 'package:gym/legs_T/code%20dart/Pistol_Squat.dart';
import 'package:gym/legs_T/code%20dart/Romanian_Deadlift.dart';
import 'package:gym/legs_T/code%20dart/Squats.dart';
import 'package:gym/legs_T/code%20dart/Step_ups.dart';
import 'package:gym/legs_T/code%20dart/Sumo_Deadlift.dart';
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

class legs extends StatefulWidget {
  const legs({super.key});

  @override
  State<legs> createState() => _legsState();
}

class _legsState extends State<legs> {
  final List<String> images = [
    'lib/legs_T/legs_images/Squats.gif',
    'lib/legs_T/legs_images/Lunges.gif',
    'lib/legs_T/legs_images/Leg_Press.gif',
    'lib/legs_T/legs_images/Deadlift.gif',
    'lib/legs_T/legs_images/Calf_Raises.gif',
    'lib/legs_T/legs_images/Leg_Extension.gif',
    'lib/legs_T/legs_images/Leg_Curl.gif',
    'lib/legs_T/legs_images/Bulgarian_Split.gif',
    'lib/legs_T/legs_images/Step_ups.jpeg',
    'lib/legs_T/legs_images/Glute_Bridge.gif',
    'lib/legs_T/legs_images/Hack_Squat.gif',
    'lib/legs_T/legs_images/Sumo_Deadlift.gif',
    'lib/legs_T/legs_images/Romanian_Deadlift.webp',
    'lib/legs_T/legs_images/Pistol_Squat.jpeg',
  ];
  final List<String> muscleNames = [
    'Squats', // القرفصاء
    'Walking_Lunges', // الاندفاع
    'Leg_Press', // ضغط الأرجل
    'Deadlift', // الرفعة المميتة
    'Calf_Raises', // رفع السمانة
    'Leg_Extension', // تمديد الأرجل
    'Leg_Curl', // ثني الأرجل
    'Bulgarian_Split', // القرفصاء البلغارية المنفصلة
    'Step_ups', // الصعود على صندوق
    'Glute_Bridge', // جسر الألوية
    'Hack_Squat', // القرفصاء باستخدام جهاز الهاك
    'Sumo_Deadlift', // الرفعة المميتة بأسلوب السومو
    'Romanian_Deadlift', // الرفعة المميتة الرومانية
    'Pistol_Squat', // القرفصاء بقدم واحدة
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
                                  builder: (context) => const Squats()));
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Lunges()));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Leg_Press()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Deadlift()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Calf_Raises()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Leg_Extension()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Leg_Curl()));
                          break;
                        case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Bulgarian_Split()));
                          break;
                        case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Step_ups()));
                          break;
                        case 9:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Glute_Bridge()));
                          break;
                        case 10:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hack_Squat()));
                          break;
                        case 11:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Sumo_Deadlift()));
                          break;
                        case 12:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Romanian_Deadlift()));
                          break;
                        case 13:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Pistol_Squat()));
                          break;
                        case 14:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const muscles()));
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
