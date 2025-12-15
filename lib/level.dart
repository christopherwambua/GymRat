import 'package:flutter/material.dart';

class Level extends StatelessWidget {
  const Level({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("gym1.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 50),
            Text(
              "Select Your Level :",
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
                fontSize: 30,
                foreground: Paint()
                  ..style = PaintingStyle.stroke
                  ..strokeWidth = 2
                  ..color = Colors.white,
              ),
            ),
            SizedBox(height: 20),
            Center(
              child: Column(
                children: [
                  OutlinedButton(onPressed: () {}, child: Text("Begginer")),
                  SizedBox(height: 13),
                  OutlinedButton(onPressed: () {}, child: Text("Intermediate")),
                  SizedBox(height: 13),
                  OutlinedButton(onPressed: () {}, child: Text("Advanced")),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
