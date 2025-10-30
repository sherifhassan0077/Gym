import 'package:flutter/material.dart';
import 'package:gym/muscles.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'chest_T/Butterfly.dart';

class Exercise {
  final String exerciseName;
  final String weight;
  final String reps;
  final String sets;

  Exercise({
    required this.exerciseName,
    required this.weight,
    required this.reps,
    required this.sets,
  });
}

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;

  List<Exercise> exercises = []; // قائمة التمارين

  late Box box;

  @override
  void initState() {
    super.initState();
    _openBox(); // فتح صندوق Hive عند بدء التطبيق
  }

  Future<void> _openBox() async {
    box = await Hive.openBox('data');
    _loadSavedData(); // تحميل البيانات المخزنة عند فتح التطبيق
  }

  void _loadSavedData() {
    // استرجاع البيانات من Hive
    setState(() {
      // هنا يمكنك إضافة بيانات افتراضية أو استرجاع البيانات من Hive
      // في هذه الحالة سنقوم بإضافة تمرين افتراضي كمثال
      // exercises = [
      //   Exercise(
      //     exerciseName: box.get('exerciseName', defaultValue: 'لا يوجد بيانات'),
      //     weight: box.get('weight', defaultValue: 'لا يوجد بيانات'),
      //     reps: box.get('reps', defaultValue: 'لا يوجد بيانات'),
      //     sets: box.get('sets', defaultValue: 'لا يوجد بيانات'),
      //   ),
      // ];
    });
  }

  // void _loadDataForSelectedDay() {
  //   if (_selectedDay != null) {
  //     setState(() {
  //       final exerciseData = box.get('Butterfly_$_selectedDay');

  //       if (exerciseData != null) {
  //         exercises = [
  //           Exercise(
  //             exerciseName: exerciseData['exerciseName'] ??
  //                 'No Data', // استخدام معامل افتراضي
  //             weight: exerciseData['weight'] ?? 'No Data',
  //             reps: exerciseData['reps'] ?? 'No Data',
  //             sets: exerciseData['sets'] ?? 'No Data',
  //           ),
  //         ];
  //       } else {
  //         exercises = []; // لا توجد بيانات للعرض لهذا اليوم
  //       }
  //     });
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard with Calendar'),
      ),
      body: Column(
        children: [
          TableCalendar(
            firstDay: DateTime.utc(2020, 1, 1),
            lastDay: DateTime.utc(2030, 12, 31),
            focusedDay: _focusedDay,
            calendarFormat: _calendarFormat,
            selectedDayPredicate: (day) {
              return isSameDay(_selectedDay, day);
            },
            onDaySelected: (selectedDay, focusedDay) {
              setState(() {
                _selectedDay = selectedDay;
                _focusedDay = focusedDay;
                // _loadDataForSelectedDay(); // تحميل البيانات عند تحديد يوم
              });
            },
            onFormatChanged: (format) {
              if (_calendarFormat != format) {
                setState(() {
                  _calendarFormat = format;
                });
              }
            },
            onPageChanged: (focusedDay) {
              _focusedDay = focusedDay;
            },
          ),
          SizedBox(height: 20),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: ListView.builder(
                itemCount: exercises.length,
                itemBuilder: (context, index) {
                  final exercise = exercises[index];
                  return Card(
                    margin: EdgeInsets.symmetric(vertical: 10),
                    child: ListTile(
                      title: Text(exercise.exerciseName),
                      subtitle: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // children: [
                        //   Text('الوزن: ${exercise.weight} كجم'),
                        //   Text('العدادات: ${exercise.reps}'),
                        //   Text('المجموعات: ${exercise.sets}'),
                        // ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => muscles(),
                ),
              );
            },
            child: Text(
              'Muscles',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
