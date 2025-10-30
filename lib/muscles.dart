import 'package:flutter/material.dart';
import 'package:gym/Core_muscles.dart';
import 'package:gym/back.dart';
import 'package:gym/bicesps.dart';
import 'package:gym/chest.dart';
import 'package:gym/home.dart';
import 'package:gym/legs.dart';
import 'package:gym/shoulder.dart';
import 'package:gym/tricesps.dart';

class muscles extends StatefulWidget {
  const muscles({super.key});

  @override
  State<muscles> createState() => _musclesState();
}

class _musclesState extends State<muscles> {
  // قائمة بالصور التي ستعرض في الشبكة
  final List<String> images = [
    'lib/image/chest.jpg',
    'lib/image/back.jpg',
    'lib/image/shoulder.jpg',
    'lib/image/bicesps.jpg',
    'lib/image/tricesps.jpg',
    'lib/image/legs.jpg',
    'lib/image/Core_muscles.jpeg',
  ];

  // قائمة بأسماء العضلات
  final List<String> muscleNames = [
    'chest',
    'back',
    'shoulder',
    'bicesps',
    'tricesps',
    'legs',
    'Core_muscles',
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
              'muscles',
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
                                builder: (context) => const chest()),
                          );
                          break;
                        case 1:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const back()));
                          break;
                        case 2:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const shoulder()));
                          break;
                        case 3:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const bicesps()));
                          break;
                        case 4:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const tricesps()));
                          break;
                        case 5:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const legs()));
                          break;
                        case 6:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Core_muscles()));
                          break;
                        default:
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
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

  // دالة لعرض تفاصيل العضلة
}
