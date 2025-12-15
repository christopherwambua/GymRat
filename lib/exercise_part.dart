import 'package:flutter/material.dart';

class ExercisePart extends StatelessWidget {
  const ExercisePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/gym2.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "WHERE DO YOU\nWANT TO TRAIN",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 20),
            customButton("ARMS","/arms", context),
            customButton("CHEST","/chest", context),
            customButton("STOMACH","/stomach",context),
            customButton("BACK","/back", context),
            customButton("LEGS","/legs", context),
            customButton("FULLBODY","/fullbody", context),
          ],
        ),
      ),
    );
  }
}

Widget customButton(String title, String route, BuildContext context) {
  return Container(
    margin: const EdgeInsets.only(bottom: 20),
    width: 200,
    height: 50,
    child: ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      ),
      onPressed: () {
        Navigator.pushNamed(context, route);
      },
      child: Text(
        title,
        style: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w700,
        ),
      ),
    ),
  );
}
