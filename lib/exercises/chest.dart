import 'package:flutter/material.dart';

class Exercise {
  final String name;
  final String imageUrl;
  final int sets;
  final int reps;

  const Exercise({
    required this.name,
    required this.imageUrl,
    this.sets = 3,
    this.reps = 12,
  });
}

class ChestPage extends StatelessWidget {
  const ChestPage({super.key});

  final List<Exercise> exercises = const [
    Exercise(
      name: 'Push-Ups',
      imageUrl: 'assets/gifs/pushups.gif',
      sets: 3,
      reps: 12,
    ),
    Exercise(
      name: 'Dumbell-Press',
      imageUrl: 'assets/gifs/pushups.gif',
      sets: 3,
      reps: 15,
    ),
    Exercise(
      name: 'Wide-Press',
      imageUrl: 'assets/gifs/pushups.gif',
      sets: 3,
      reps: 15,
    ),
    Exercise(
      name: 'Chest-Dips',
      imageUrl: 'assets/gifs/pushups.gif',
      sets: 3,
      reps: 12,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2B2B2B),
      body: SafeArea(
        child: Column(
          children: [
            // Header
            Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back, color: Colors.white),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),

            // Title
            const Text(
              'CHESTDAY',
              style: TextStyle(
                fontSize: 48,
                fontWeight: FontWeight.w900,
                color: Colors.white,
                letterSpacing: 2,
                shadows: [
                  Shadow(
                    offset: Offset(3, 3),
                    color: Colors.black,
                    blurRadius: 5,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // Exercise List
            Expanded(
              child: ListView.builder(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                itemCount: exercises.length,
                itemBuilder: (context, index) {
                  return ExerciseCard(
                    exercise: exercises[index],
                    number: index + 1,
                  );
                },
              ),
            ),

            // Start Workout Button
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Center(
                  child: Text(
                    'START WORKOUT',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ExerciseCard extends StatelessWidget {
  final Exercise exercise;
  final int number;

  const ExerciseCard({super.key, required this.exercise, required this.number});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        color: const Color(0xFF3A3A3A),
        borderRadius: BorderRadius.circular(16),
        boxShadow: const [
          BoxShadow(color: Colors.black, blurRadius: 8, offset: Offset(0, 4)),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Exercise Number and Name
          Padding(
            padding: const EdgeInsets.all(16),
            child: Text(
              '$number.${exercise.name}',
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
          ),

          // Exercise Image/GIF
          ClipRRect(
            borderRadius: const BorderRadius.only(
              bottomLeft: Radius.circular(16),
              bottomRight: Radius.circular(16),
            ),
            child: Container(
              height: 250,
              width: double.infinity,
              color: const Color(0xFF1A1A1A),
              child: Image.asset(
                exercise.imageUrl,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  // Placeholder if image not found
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.fitness_center,
                          size: 64,
                          color: Colors.white54,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          '${exercise.sets} sets × ${exercise.reps} reps',
                          style: const TextStyle(
                            color: Colors.white70,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
