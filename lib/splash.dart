import 'dart:async';

import 'package:flutter/material.dart';
import 'package:gym/home.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  _SplashState createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  void initState() {
    super.initState();
    // الانتقال إلى الصفحة الرئيسية بعد 3 ثوانٍ
    Timer(Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => Home()),
      );
    }
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/image/welcom_page.jpg'), // مسار الصورة
                fit: BoxFit.cover, // تغطي الشاشة بالكامل
              ),
            ),
          ),
          // إضافة عناصر فوق الصورة
          Center(
            child: Image.asset(
              
              'lib/image/WhatsApp Image 2024-09-21 at 14.09.08_95fe4756.jpg')
          ),
        ],
      ),
    );
  }
}
