import 'package:flutter/material.dart';
import 'package:myapp/construction.dart';
import 'package:myapp/exercises/arms.dart';
import 'package:myapp/exercises/back.dart';
import 'package:myapp/exercises/chest.dart';
import 'package:myapp/exercises/legs.dart';
import 'package:myapp/exercises/stomach.dart';
import 'package:myapp/exercises/full_body.dart';
import 'package:myapp/diet/diet_goal.dart';
import 'package:myapp/soul/soul.dart';
import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
      routes: {
        '/arms': (context) => ArmsPage(),
        '/legs': (context) => LegPage(),
        '/chest': (context) => ChestPage(),
        '/back': (context) => BackPage(),
        '/stomach': (context) => StomachPage(),
        '/fullbody': (context) => FullBodyPage(),
        '/diet_goal': (context) => DietGoal(),
        '/construction': (context) => Construction(),
        '/soul': (context) => const SoulScreen(),
      },
    );
  }
}
