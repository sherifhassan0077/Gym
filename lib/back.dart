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
import 'package:gym/muscles.dart';
// استيراد صفحات تمارين الظهر الصحيحة هنا

class back extends StatefulWidget {
  const back({super.key});

  @override
  State<back> createState() => _backState();
}

class _backState extends State<back> {
  final List<String> images = [
    'lib/back_T/how-to-deadlift.gif',
    'lib/back_T/chin-ups.gif',
    'lib/back_T/pulldown-min.gif',
    'lib/back_T/Barbell Row.gif',
    'lib/back_T/t-bar-row-muscles.gif',
    'lib/back_T/Seated Cable Rows.gif',
    'lib/back_T/Dumbbell Row.gif',
    'lib/back_T/Inverted Rows.jpeg',
    'lib/back_T/Chest Supported Row.gif',
    'lib/back_T/Face Pulls.gif',
  ];

  // قائمة بأسماء العضلات
  final List<String> muscleNames = [
    'Deadlift', // الرفعة المميتة
    'Pull-ups', // العقلة
    'Lat Pulldown', // سحب الكابل لأسفل
    'Barbell Row', // التجديف بالبار
    'T-bar Row', // التجديف بجهاز الـ T-bar
    'Cable Rows', // التجديف باستخدام الكابل أثناء الجلوس
    'Dumbbell Row', // التجديف بالدمبل
    'Inverted Rows', // سحب الجسم (Bodyweight Row)
    'Supported Row', // التجديف بجهاز مدعوم بالصدر
    'Hyperextensions', // تمديد الظهر
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
              'Back',
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
                      // Navigate based on the index
                      switch (index) {
                        case 0:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const deadlift())); // صفحة الرفعة المميتة
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Pull_ups())); // صفحة العقلة
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Lat_Pulldown())); // صفحة سحب الكابل لأسفل
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Barbell_Row())); // صفحة التجديف بالبار
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const T_bar_Row())); // صفحة التجديف بجهاز الـ T-bar
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Cable_Rows())); // صفحة التجديف بالكابل
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Dumbbell_Row())); // صفحة التجديف بالدمبل
                          break;
                        case 7:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Inverted_Rows())); // صفحة سحب الجسم
                          break;
                            case 8:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Supported_Row())); // صفحة سحب الجسم
                          break;
                           case 9:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const Hyperextensions())); // صفحة سحب الجسم
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
