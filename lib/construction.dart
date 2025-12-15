import 'package:flutter/material.dart';

class Construction extends StatelessWidget {
  const Construction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        title:Text("This Page IS UNDER CONSTRUCTION,/n Please be patient"),
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/construction.jpeg'),
            fit: BoxFit.fitWidth,
          ),
        ),
      ),
    );
  }
}
