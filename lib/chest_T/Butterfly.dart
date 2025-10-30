import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:gym/dashboard.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';

class Butterfly extends StatefulWidget {
  final Function(DateTime, Map<String, dynamic>) onSaveData;
  final DateTime selectedDay;

  const Butterfly(
      {super.key, required this.onSaveData, required this.selectedDay});

  @override
  State<Butterfly> createState() => _ButterflyState();
}

class _ButterflyState extends State<Butterfly> {
  final List<String> images = [
    'lib/image/chest/Butterfly_slide.gif',
  ];
  // final TextEditingController weightController = TextEditingController();
  // final TextEditingController repsController = TextEditingController();
  // final TextEditingController setsController = TextEditingController();

  late Box box;

  @override
  void initState() {
    super.initState();
    _openBox();
  }

  Future<void> _openBox() async {
    box = await Hive.openBox('data');
  }

  void _saveData() {
    // final exerciseData = {
    //   'exerciseName': 'Butterfly', // حفظ اسم التمرين
    //   'weight': weightController.text,
    //   'reps': repsController.text,
    //   'sets': setsController.text,
    // };

    // box.put('Butterfly_${widget.selectedDay}',
    //     exerciseData); // حفظ البيانات في Hive بناءً على اليوم المحدد
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/image/background.jpg'),
            fit: BoxFit.fill,
          ),
        ),
        child: ListView(
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
            Column(
              children: [
                TextField(
                  //   controller: weightController,
                  decoration: InputDecoration(
                    labelText: 'الوزن (kg)',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  //   controller: repsController,
                  decoration: InputDecoration(
                    labelText: 'العدادات',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
                SizedBox(height: 10),
                TextField(
                  //controller: setsController,
                  decoration: InputDecoration(
                    labelText: 'المجموعات',
                    border: OutlineInputBorder(),
                    labelStyle: TextStyle(color: Colors.white),
                  ),
                  style: TextStyle(color: Colors.white),
                  keyboardType: TextInputType.number,
                ),
              ],
            ),
            SizedBox(height: 20),
            Container(
              width: 70,
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
                onPressed: () {
                  // _saveData(); // حفظ البيانات
                  // Navigator.push(
                  //   context,
                  //   MaterialPageRoute(builder: (context) => Dashboard()),
                  // );
                },
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
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
