import 'package:flutter/material.dart';
import 'package:gym/chest_T/Butterfly.dart';
import 'package:gym/chest_T/Cable_Crossover.dart';
import 'package:gym/chest_T/Cable_Press.dart';
import 'package:gym/chest_T/Flat%20Dumbbell.dart';
import 'package:gym/chest_T/Parallel_Bar.dart';
import 'package:gym/chest_T/Push-up.dart';
import 'package:gym/chest_T/Svend%20Press.dart';
import 'package:gym/chest_T/Flat_Barbell.dart';
import 'package:gym/chest_T/Incline_Barbell.dart';
import 'package:gym/chest_T/chest_press_mach.dart';
import 'package:gym/chest_T/squeeze%20dumbbell.dart';
import 'package:gym/muscles.dart';
import 'package:gym/chest_T/Incline%20Dumbbell.dart';
import 'chest_T/Butterfly.dart';

class chest extends StatefulWidget {
  const chest({super.key});

  @override
  State<chest> createState() => _chestState();
}

class _chestState extends State<chest> {
  final List<String> images = [
    'lib/image/chest/Barbell-Bench-Press.gif',
    'lib/image/chest/butter fly.gif',
    'lib/image/chest/cable-standing-chest-press.gif',
    'lib/image/chest/cable-standing-crossover.gif',
    'lib/image/chest/chest press.gif',
    'lib/image/chest/How to Perform Barbell Incline Bench Press.gif',
    'lib/image/chest/svend press.gif',
    'lib/image/chest/تفتيح عالي.gif',
    'lib/image/chest/تفتيح.gif',
    'lib/image/chest/ضغط بنش .gif',
    'lib/image/chest/ضغط.gif',
    'lib/image/chest/متوازي.gif',
  ];

  // قائمة بأسماء العضلات
// قائمة بأسماء العضلات
  final List<String> muscleNames = [
    'Flat Barbell ', // بار فلات
    'Butterfly ', // butterfly
    'Cable Press', // كيبل امامي
    'Cable Crossover', // كيبل سفلي
    'Chest Press', // chest-press
    'Incline Barbell ', // بار عالي
    'Svend Press', // عضلة الوسط
    'fly Incline', // تفتيج عالي
    'fly flat ', // تفتيح مستوي
    'squeeze dumbbell', // عضلة المنتصف
    'Push-up', // ضغط
    'Parallel Bar ', // متوازي
    'Extra Muscle', // عضلة زيادة (إذا كانت عضلة غير محددة)
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity, // تأكد من أن الحاوية تملأ العرض الكامل
        height: double.infinity, // الحاوية تملأ الطول كامل
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/image/background.jpg'), // مسار الصورة
            fit: BoxFit.fill, // تجعل الصورة تغطي الشاشة بالكامل
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start, // لجعل العناصر في الأعلى
          crossAxisAlignment:
              CrossAxisAlignment.center, // لجعل العناصر في المنتصف
          children: [
            SizedBox(height: 40), // لإضافة بعض المساحة من الأعلى
            Text(
              'Chest',
              style: TextStyle(
                fontSize: 50,
              ),
              textAlign: TextAlign.center, // لضبط محاذاة النص في الوسط
            ),
            SizedBox(height: 50),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // عدد الأعمدة في الشبكة
                  crossAxisSpacing: 10, // المسافة الأفقية بين العناصر
                  mainAxisSpacing: 10, // المسافة العمودية بين العناصر
                ),
                itemCount: images.length, // عدد العناصر في الشبكة
                itemBuilder: (context, index) {
                  return ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.all(0), // لضبط الحواف من كل الجوانب

                      elevation: 6, // الظل حول الزر
                    ),
                    onPressed: () {
                      // تحديد سلوك مختلف لكل زر
                      switch (index) {
                        case 0:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const FlatBarbell()));
                          break;
                        case 1:
                          final result = Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Butterfly(
                                selectedDay: DateTime.now(), // يوم الحفظ
                                onSaveData: (selectedDay, data) {
                                  selectedDay:
                                  DateTime.now();
                                  // دالة لحفظ البيانات
                                },
                              ),
                            ),
                          );

                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Cable_Press()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Cable_Crossover()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Chest_press()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Incline_Barbell()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Svend_Press()));
                          break;
                        case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const fly_Incline()));
                          break;
                        case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Flat_Dumbbell()));
                          break;
                        case 9:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const squeeze_dumbbell()));
                          break;
                        case 10:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Push_up()));
                          break;
                        case 11:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Parallel_Bar()));
                          break;
                        default:
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
                          images[index], // الصورة الخاصة بكل زر
                          width: 100,
                          height: 100,
                          fit: BoxFit.cover, // لضبط حجم الصورة داخل الزر
                        ),
                        SizedBox(height: 10),
                        Text(
                          muscleNames[index], // النص الخاص بكل عضلة
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
