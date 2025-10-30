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

class bicesps extends StatefulWidget {
  const bicesps({super.key});

  @override
  State<bicesps> createState() => _bicespsState();
}

class _bicespsState extends State<bicesps> {
  final List<String> images = [
    'lib/bicesps_T/bicesps_images/Barbell_Curl.gif',
    'lib/bicesps_T/bicesps_images/Dumbbell_Curl.gif',
    'lib/bicesps_T/bicesps_images/Hammer-Curl.gif',
    'lib/bicesps_T/bicesps_images/Concentration-Curl.gif',
    'lib/bicesps_T/bicesps_images/Preacher_Curl.gif',
    'lib/bicesps_T/bicesps_images/EZ_Bar_Curl.gif',
    'lib/bicesps_T/bicesps_images/Cable_Curl.gif',
    'lib/bicesps_T/bicesps_images/Spider_Curl.gif',
    'lib/bicesps_T/bicesps_images/Reverse_Barbell.gif',
    'lib/bicesps_T/bicesps_images/Incline_Dumbbell.gif',
    'lib/bicesps_T/bicesps_images/Zottman_Curl.gif',
    'lib/bicesps_T/bicesps_images/OneArm_Dumbbell.gif',
    'lib/bicesps_T/bicesps_images/CrossBody_Hammer.gif',
  ];

  final List<String> muscleNames = [
    'Barbell_Curl', // (تمرين الرفع بالبار)
    'Dumbbell_Curl', // (تمرين الرفع بالدمبل)
    'Hammer_Curl', // (تمرين المطرقة)
    'Concentration_Curl', // (تمرين التركيز)
    'Preacher_Curl', // (تمرين البريشر)
    'EZBar_Curl', // (تمرين الرفع بشريط الـ EZ)
    'Cable_Curl', // (تمرين الرفع بالكابل)
    'Spider_Curl', // (تمرين العنكبوت)
    'Reverse_Barbell', // (تمرين الرفع العكسي بالبار)
    'Incline_Dumbbell', // (تمرين الرفع بالدمبل بزاوية مائلة)
    'Zottman_Curl', // (تمرين الزوتمان)
    'OneArm_Dumbbell_Curl', // (تمرين الرفع بذراع واحدة بالدمبل)
    'CrossBody_Hammer_Curl', // (تمرين المطرقة على شكل تقاطع)
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
                                  builder: (context) => const Barbell_Curl()));
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dumbbell_Curl()));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Hammer_Curl()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Concentration_Curl()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Preacher_Curl()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const EZBar_Curl()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cable_Curl()));
                          break;
                          case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Spider_Curl()));
                          break;
                        case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Reverse_Barbell()));
                          break;
                        case 9:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Incline_Dumbbell_biceps()));
                          break;
                        case 10:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Zottman_Curl()));
                          break;
                        case 11:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const OneArm_Dumbbell_Curl()));
                          break;
                        case 12:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const CrossBody_Hammer_Curl()));
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
