
import 'package:flutter/material.dart';
class Logein extends StatelessWidget {
  const Logein({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      body: Padding(
        padding: const EdgeInsetsGeometry.all(20),
        child: Column(
          children: [
            SizedBox(height: 80, width: 800),
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),

              child: Image.asset("images/logo3.png", fit: BoxFit.cover),
            ),

            SizedBox(height: 20),
            Text(
              "مرحبا بك في خدماتي",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),

            SizedBox(height: 10),
            Text(
              "سجل دخولك للوصول لافضل خدمات",
              style: TextStyle(color: Colors.grey),
            ),

            SizedBox(height: 40),

            Row(
              children: [
                Expanded(
                  flex: 3,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "رقم الهاتف",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "ادخل رقم الهاتف",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "كود الدولة",
                        style: TextStyle(fontSize: 20, color: Colors.black),
                      ),

                      TextField(
                        decoration: InputDecoration(
                          hintText: "+20",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 15),
            Text(
              "بالمتابعة فإنك توافق على شروط الخدمة و سياسة الخصوصية",
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            SizedBox(height: 30),

            // زر متابعة
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue[800],
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text("متابعة"),
              ),
            ),

            SizedBox(height: 20),

            Text("أو"),

            SizedBox(height: 20),

            // تسجيل باستخدام Google
            SizedBox(
              width: double.infinity,
              height: 50,
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Google المتابعة باستخدام"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
