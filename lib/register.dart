import 'package:flutter/material.dart';
import 'package:gym/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
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

            // حقل الاسم الأول
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  hintText: 'First Name',
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

            // حقل الاسم الأخير
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.person),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  hintText: 'Last Name',
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

            // حقل البريد الإلكتروني
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

            // حقل كلمة المرور
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(85),
              ),
              child: TextField(
                style: TextStyle(fontSize: 18, color: Colors.black),
                decoration: InputDecoration(
                  prefixIcon: Icon(Icons.lock),
                  contentPadding:
                      EdgeInsets.symmetric(horizontal: 15, vertical: 15),
                  hintText: 'Password',
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
            SizedBox(height: 15), // تحريك لأعلى

            // زر التسجيل
            Container(
              width: 150,  // تحديد العرض
              height: 50,
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 14, 215, 198),
                borderRadius: BorderRadius.circular(85),
              ),
              child: Text(
                'Register',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          

            // Divider مع النص "Sign up with"
           
            SizedBox(height:10), // إضافة مساحة قبل الأيقونات

            // جملة "Already have an account? Login now"
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already have an account? ",
                  style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 15,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const Home()));
                  },
                  child: Text(
                    'Login',
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
            image: AssetImage(
                'lib/image/welcom_page.jpg'), // مسار الصورة
            fit: BoxFit.fill, // تجعل الصورة تغطي الشاشة بالكامل
          ),
        ),
      ),
    );
  }
}
