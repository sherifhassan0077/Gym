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

class shoulder extends StatefulWidget {
  const shoulder({super.key});

  @override
  State<shoulder> createState() => _shoulderState();
}

class _shoulderState extends State<shoulder> {
 final List<String> images = [
  'lib/image/shoulder_T/Barbell_Shoulder.gif',
  'lib/image/shoulder_T/Bent_Over.gif',
  'lib/image/shoulder_T/Cable Lateral Raises.gif',
  'lib/image/shoulder_T/Cable Rear Delt Fly.gif',
  'lib/image/shoulder_T/Dumbbell Rear Delt Row.gif',
  'lib/image/shoulder_T/Dumbbell Upright Row.gif',
  'lib/image/shoulder_T/Dumbbell_Lateral_Raises_muscle_worked.webp',
  'lib/image/shoulder_T/Dumbbell-Shoulder-Press.gif',
  'lib/image/shoulder_T/Face Pulls.gif',
  'lib/image/shoulder_T/Half-Arnold-Press.gif',
  'lib/image/shoulder_T/Lateral Raises.gif',
  'lib/image/shoulder_T/Machine Lateral Raise.gif',
  'lib/image/shoulder_T/Military Press.gif',
  'lib/image/shoulder_T/Overhead Press Machine.gif',
  'lib/image/shoulder_T/Push Press.gif',
  'lib/image/shoulder_T/Reverse Pec Deck.gif',
  'lib/image/shoulder_T/Seated Dumbbell Press.gif',
  'lib/image/shoulder_T/Smith Machine Shoulder Press.gif',
  'lib/image/shoulder_T/Landmine_Press.gif',
];

final List<String> muscleNames = [
  'Barbell Shoulder',            // 1st image
  'Bent_Over',     // 2nd image
  'Cable_Raises',        // 3rd image
  'Cable_Fly',         // 4th image
  'Dumbbell_Rear',      // 5th image
  'Dumbbell_Upright',        // 6th image
  'Dumbbell_Raises',     // 7th image
  'Dumbbell_Shoulder',     // 8th image
  'Face_Pulls',                  // 9th image
  'Arnold_Press',           // 10th image
  'Lateral_Raises',              // 11th image
  'Machine_Raise',       // 12th image
  'Military_Press',              // 13th image
  'Overhead_Machine',      // 14th image
  'Push_Press',                  // 15th image
  'Reverse_Deck',            // 16th image
  'Seated_Dumbbell',       // 17th image
  'Smith_Machine',// 18th image
  'Landmine_Press',              // 19th image (Untitled.jpeg)
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
                                  builder: (context) => const Barbell_Shoulder()));
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Bent_Over()));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cable_Raises()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cable_Fly()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dumbbell_Rear()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dumbbell_Upright()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dumbbell_Raises()));
                          break;
                        case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Dumbbell_Shoulder()));
                          break;
                        case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Face_Pulls()));
                          break;
                          case 9:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Arnold_Press()));
                          break;
                        case 10:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Lateral_Raises()));
                          break;
                          case 11:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Machine_Raise()));
                          break;
                          case 12:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Military_Press()));
                          break;
                          case 13:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Overhead_Machine()));
                          break;
                          case 14:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Push_Press()));
                          break;
                            case 15:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Reverse_Deck()));
                          break;
                           case 16:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Seated_Dumbbell()));
                          break;
                           case 17:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Smith_Machine()));
                          break;
                           case 18:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Landmine_Press()));
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
