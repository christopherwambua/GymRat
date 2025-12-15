import 'package:flutter/material.dart';
import 'exercise_part.dart';

class Activity extends StatelessWidget {
  const Activity({super.key});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: h / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/dumbell1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: const Color(0xFF5D5D5D),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ExercisePart()),
                  );
                },
                child: Text(
                  "Train",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: h / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/diet1.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: const Color(0xFF5D5D5D),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/diet_goal');
                },
                child: Text(
                  "Diet",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: h / 3,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/soul.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
            child: Center(
              child: FilledButton(
                style: FilledButton.styleFrom(
                  minimumSize: Size(150, 50),
                  backgroundColor: const Color(0xFF5D5D5D),
                  side: BorderSide(color: Colors.white, width: 2),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, '/soul');
                },
                child: Text(
                  "Soul",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
