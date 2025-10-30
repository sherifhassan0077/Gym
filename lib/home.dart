import 'package:flutter/material.dart';
import 'package:gym/dashboard.dart';
import 'package:gym/register.dart';
import 'package:gym/muscles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            SizedBox(height: 100), // تحريك لأعلى
            Image.asset(
              'lib/image/dumbell.png',
              height: 200,
              width: 200,
            ),
            SizedBox(height: 50), // تحريك لأعلى

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.email),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  hintText: 'Email',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(85),
                  ),
                ),
              ),
            ),
            SizedBox(height: 10), // تحريك لأعلى

            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextField(
                style: TextStyle(
                  fontSize: 18,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.password),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  hintText: 'PRD',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(85),
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            SizedBox(height: 15), // تحريك لأعلى

            Container(
              width: 150, // تحديد العرض
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 215, 198),
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Dashboard()));
                },
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(height: 25), // تحريك لأعلى

            // Divider مع النص "Sign up with"
            Row(
              children: [
                Expanded(child: Divider()), // الخط الأيسر
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Sign up with',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey,
                    ),
                  ),
                ),
                Expanded(child: Divider()), // الخط الأيمن
              ],
            ),
            SizedBox(height: 15), // إضافة مساحة قبل الأيقونات

            Row(
              mainAxisAlignment:
                  MainAxisAlignment.center, // يضع الأيقونات في المنتصف أفقيًا
              children: [
                Image.asset(
                  'lib/image/icons8-google-48.png', // مسار شعار Google
                  width: 50.0,
                  height: 50.0,
                ),
                SizedBox(width: 25), // مسافة بين الأيقونات
                Image.asset(
                  'lib/image/icons8-facebook-48.png', // مسار شعار Facebook
                  width: 50.0,
                  height: 50.0,
                ),
              ],
            ),
            SizedBox(height: 15), // مساحة قبل النص

            // جملة "Don't have an account? Register now"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account ? ",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                  ),
                ),
                SizedBox(width: 5),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Register()));
                  },
                  child: Text(
                    'Register ',
                    style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        width: double.infinity, // تأكد من أن الحاوية تملأ العرض الكامل
        height: double.infinity, // تأكد من أن الحاوية تملأ الارتفاع الكامل
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/image/welcom_page.jpg'), // مسار الصورة
            fit: BoxFit.fill, // تجعل الصورة تغطي الشاشة بالكامل
          ),
        ),
      ),
    );
  }
}
