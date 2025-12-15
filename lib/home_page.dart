import 'package:flutter/material.dart';
import 'activity.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[700],
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            height: 300,
            // width:double.infinity,
            //  color: Color(0xFF000000)
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gymrat1.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.bottomLeft,

            child: Text(
              'Lets get fit Today',

              textAlign: TextAlign.left,
              style: TextStyle(
                color: const Color.fromARGB(255, 248, 247, 247),
                fontWeight: FontWeight.bold,
                fontFamily: 'Holtwood One SC',
              ),
            ),
          ),
          SizedBox(height: 10),
          SizedBox(
            height: 50,
            child: FilledButton(
              style: FilledButton.styleFrom(
                backgroundColor: Color(0xFF1E1E1E),
                foregroundColor: Color.fromARGB(245, 243, 244, 246),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                side: BorderSide(color: Colors.white, width: 2),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Activity()),
                );
              },
              child: Text("START"),
            ),
          ),

          SizedBox(height: 10),
          Container(
            height: 300,
            // color: Color.fromARGB(255, 44, 222, 8)
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gymrat2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            alignment: Alignment.topRight,
            child: Text(
              "lets gerrit!!",
              style: TextStyle(
                color: const Color.fromARGB(255, 244, 241, 241),
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
