import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:url_launcher/url_launcher.dart';

class Triceps_Pushdown extends StatefulWidget {
  const Triceps_Pushdown({super.key});

  @override
  State<Triceps_Pushdown> createState() => _Triceps_PushdownState();
}

class _Triceps_PushdownState extends State<Triceps_Pushdown> {
  final List<String> images = [
    'lib/tricesps_T/tricesps_images/Triceps Pushdown (Cable).gif', // الصورة الوحيدة
  ];

  final TextEditingController weightController = TextEditingController();
  final TextEditingController repsController = TextEditingController();
  final TextEditingController setsController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/image/background.jpg'), // مسار الصورة
            fit: BoxFit.fill, // تجعل الصورة تغطي الشاشة بالكامل
          ),
        ),
        child: ListView(
          // استخدام ListView بشكل صحيح
          padding: EdgeInsets.all(20.0),
          children: [
            SizedBox(height: 50),
            CarouselSlider(
              items: images.map((image) {
                return Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      image,
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }).toList(),
              options: CarouselOptions(
                height: 300,
                enlargeCenterPage: true,
                aspectRatio: 16 / 9,
                viewportFraction: 0.8,
                autoPlay: false,
                enableInfiniteScroll: false,
              ),
            ),
            SizedBox(height: 30),
            Container(
              height: 70,
              width: 250,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 194, 7, 78),
                    Color.fromARGB(255, 36, 99, 194),
                  ],
                ),
                borderRadius: BorderRadius.circular(8),
              ),
              child: TextButton(
                onPressed: () {
                  _launchUrl(
                      'https://www.youtube.com/shorts/WjLJ7zIppXQ'); // ضع رابط الفيديو هنا
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'lib/image/icons8-youtube-48.png',
                      width: 50.0,
                      height: 50.0,
                    ),
                    SizedBox(width: 20),
                    Text(
                      'شرح تفصيلي',
                      style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 10),
            // إدخال البيانات
            Column(
              children: [
                TextField(
                  controller: weightController,
                  decoration: InputDecoration(
                    labelText: 'الوزن (kg)',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // تغيير لون اللابل
                  ),
                  style:
                      TextStyle(color: Colors.white), // تغيير لون النص المدخل
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: repsController,
                  decoration: InputDecoration(
                    labelText: 'العدادات',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // تغيير لون اللابل
                  ),
                  style:
                      TextStyle(color: Colors.white), // تغيير لون النص المدخل
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  controller: setsController,
                  decoration: InputDecoration(
                    labelText: 'المجموعات',
                    border: OutlineInputBorder(),
                    labelStyle:
                        TextStyle(color: Colors.white), // تغيير لون اللابل
                  ),
                  style:
                      TextStyle(color: Colors.white), // تغيير لون النص المدخل
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 70, // تحديد العرض
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(255, 21, 255, 0),
                    Color.fromARGB(255, 86, 206, 140),
                  ],
                ),
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Save',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _launchUrl(String url) async {
  final Uri uri = Uri.parse(url);
  if (!await launchUrl(uri)) {
    throw 'لا يمكن فتح الرابط $url';
  }
}
