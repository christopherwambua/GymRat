// // import 'package:flutter/material.dart';

// // class ExercisePart extends StatelessWidget {
// //   const ExercisePart({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Container(
// //         width: double.infinity,
// //         height: double.infinity,
// //         decoration: BoxDecoration(
// //           image: DecorationImage(
// //             image: AssetImage("assets/images/gym2.jpeg"),
// //             fit: BoxFit.cover,
// //           ),
// //         ),
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             const Text(
// //               "WHERE DO YOU\nWANT TO TRAIN",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(
// //                 fontSize: 28,
// //                 fontWeight: FontWeight.w900,
// //                 color: Colors.white,
// //               ),
// //             ),
// //             const SizedBox(height: 20),
// //             customButton("ARMS","/arms", context),
// //             customButton("CHEST","/chest", context),
// //             customButton("STOMACH","/stomach",context),
// //             customButton("BACK","/back", context),
// //             customButton("LEGS","/legs", context),
// //             customButton("FULLBODY","/fullbody", context),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // Widget customButton(String title, String route, BuildContext context) {
// //   return Container(
// //     margin: const EdgeInsets.only(bottom: 20),
// //     width: 200,
// //     height: 50,
// //     child: ElevatedButton(
// //       style: ElevatedButton.styleFrom(
// //         backgroundColor: Colors.black,
// //         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
// //       ),
// //       onPressed: () {
// //         Navigator.pushNamed(context, route);
// //       },
// //       child: Text(
// //         title,
// //         style: TextStyle(
// //           color: Colors.white,
// //           fontSize: 20,
// //           fontWeight: FontWeight.w700,
// //         ),
// //       ),
// //     ),
// //   );
// // }
// import 'package:flutter/material.dart';

// class ExercisePart extends StatelessWidget {
//   const ExercisePart({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           Container(
//             width: double.infinity,
//             height: double.infinity,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: AssetImage("assets/images/gym2.jpeg"),
//                 fit: BoxFit.cover,
//               ),
//             ),
//             child: Column(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 const Text(
//                   "WHERE DO YOU\nWANT TO TRAIN",
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                     fontSize: 28,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//                 customButton("ARMS", "/arms", context),
//                 customButton("CHEST", "/chest", context),
//                 customButton("STOMACH", "/stomach", context),
//                 customButton("BACK", "/back", context),
//                 customButton("LEGS", "/legs", context),
//                 customButton("FULLBODY", "/fullbody", context),
//               ],
//             ),
//           ),
//           // Back button positioned at top-left
//           SafeArea(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: IconButton(
//                 icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
//                 style: IconButton.styleFrom(
//                   backgroundColor: Colors.black.withOpacity(0.5),
//                 ),
//                 onPressed: () {
//                   Navigator.pop(context);
//                 },
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// Widget customButton(String title, String route, BuildContext context) {
//   return Container(
//     margin: const EdgeInsets.only(bottom: 20),
//     width: 200,
//     height: 50,
//     child: ElevatedButton(
//       style: ElevatedButton.styleFrom(
//         backgroundColor: Colors.black,
//         shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
//       ),
//       onPressed: () {
//         Navigator.pushNamed(context, route);
//       },
//       child: Text(
//         title,
//         style: TextStyle(
//           color: Colors.white,
//           fontSize: 20,
//           fontWeight: FontWeight.w700,
//         ),
//       ),
//     ),
//   );
// }

// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExercisePart extends StatelessWidget {
  const ExercisePart({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/gym2.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
            child: SafeArea(
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 40),
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
                      customButton(
                        "ARMS",
                        "/arms",
                        context,
                        Icons.fitness_center,
                      ),
                      customButton(
                        "CHEST",
                        "/chest",
                        context,
                        Icons.accessibility_new,
                      ),
                      customButton(
                        "STOMACH",
                        "/stomach",
                        context,
                        Icons.self_improvement,
                      ),
                      customButton(
                        "BACK",
                        "/back",
                        context,
                        Icons.accessibility,
                      ),
                      customButton(
                        "LEGS",
                        "/legs",
                        context,
                        Icons.directions_run,
                      ),
                      customButton(
                        "FULLBODY",
                        "/fullbody",
                        context,
                        Icons.sports_gymnastics,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          // Back button positioned at top-left
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: IconButton(
                icon: Icon(Icons.arrow_back, color: Colors.white, size: 28),
                style: IconButton.styleFrom(
                  backgroundColor: Colors.black.withOpacity(0.5),
                ),
                onPressed: () {
                  HapticFeedback.lightImpact();
                  Navigator.pop(context);
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

Widget customButton(
  String title,
  String route,
  BuildContext context,
  IconData icon,
) {
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
        HapticFeedback.lightImpact();
        Navigator.pushNamed(context, route);
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white, size: 20),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
        ],
      ),
    ),
  );
}
