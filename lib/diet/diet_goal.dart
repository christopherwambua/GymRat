import 'package:flutter/material.dart';
import 'meal_plan_page.dart';

class DietGoal extends StatelessWidget {
  const DietGoal({super.key});

  void _selectGoal(BuildContext context, String goal) async {
    // Navigate to meal plan or show next screen
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected ${goal.toUpperCase()} goal'),
        backgroundColor: Colors.teal,
        behavior: SnackBarBehavior.floating,
      ),
    );
    // await Future.delayed(const Duration(milliseconds: 200));

    // navigation here:
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => MealPlanPage(goal: goal)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/dietbp.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.all(20),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.9),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back,
                          color: Colors.black87,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withValues(alpha: 0.9),
                        shape: BoxShape.circle,
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.info_outline,
                          color: Colors.black87,
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Meal Planner'),
                              content: const Text(
                                'Choose your fitness goal to get a personalized meal plan.',
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () => Navigator.pop(context),
                                  child: const Text('Got it'),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),

              const Spacer(),

              // Goal Selection Section
              Container(
                margin: const EdgeInsets.all(24),
                padding: const EdgeInsets.all(24),
                decoration: BoxDecoration(
                  color: Colors.white.withValues(alpha: 0.95),
                  borderRadius: BorderRadius.circular(24),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withValues(alpha: 0.2),
                      blurRadius: 20,
                      offset: const Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Text(
                      'Your Goal',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        color: Colors.black87,
                      ),
                    ),

                    const SizedBox(height: 8),

                    Text(
                      'Select your fitness objective',
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey.shade600,
                      ),
                    ),

                    const SizedBox(height: 24),

                    // Goal Buttons
                    GoalButton(
                      label: 'Gain',
                      icon: Icons.trending_up,
                      description: 'Build muscle mass',
                      color: Colors.blue,
                      onTap: () => _selectGoal(context, 'gain'),
                    ),

                    const SizedBox(height: 12),

                    GoalButton(
                      label: 'Shred',
                      icon: Icons.local_fire_department,
                      description: 'Lose fat & get lean',
                      color: Colors.orange,
                      onTap: () => _selectGoal(context, 'shred'),
                    ),

                    const SizedBox(height: 12),

                    GoalButton(
                      label: 'Fitness',
                      icon: Icons.favorite,
                      description: 'Stay healthy & active',
                      color: Colors.green,
                      onTap: () => _selectGoal(context, 'fitness'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 40),
            ],
          ),
        ),
      ),
    );
  }
}

class GoalButton extends StatelessWidget {
  final String label;
  final IconData icon;
  final String description;
  final Color color;
  final VoidCallback onTap;

  const GoalButton({
    super.key,
    required this.label,
    required this.icon,
    required this.description,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(16),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(
          color: Colors.grey.shade50,
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: Colors.grey.shade300, width: 1.5),
        ),
        child: Row(
          children: [
            // Icon Container
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: color.withValues(alpha: 0.2),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Icon(icon, size: 24, color: color),
            ),

            const SizedBox(width: 16),

            // Text Content
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    label,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),
                  Text(
                    description,
                    style: TextStyle(fontSize: 12, color: Colors.grey.shade600),
                  ),
                ],
              ),
            ),

            // Arrow Icon
            Icon(
              Icons.arrow_forward_ios,
              size: 18,
              color: Colors.grey.shade400,
            ),
          ],
        ),
      ),
    );
  }
}
