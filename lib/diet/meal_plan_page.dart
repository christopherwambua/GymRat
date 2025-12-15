// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class MealPlanPage extends StatelessWidget {
  final String goal;
  const MealPlanPage({super.key, required this.goal});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: _getGoalColor(),
        title: Text("${goal.toUpperCase()} MEAL PLAN"),
        centerTitle: true,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: _buildContent(),
    );
  }

  Widget _buildContent() {
    switch (goal.toLowerCase()) {
      case "gain":
        return _gainPlan();
      case "shred":
        return _shredPlan();
      case "fitness":
        return _fitnessPlan();
      default:
        return const Center(
          child: Text(
            "No plan available",
            style: TextStyle(fontSize: 18, color: Colors.grey),
          ),
        );
    }
  }

  Color _getGoalColor() {
    switch (goal.toLowerCase()) {
      case "gain":
        return Colors.blue;
      case "shred":
        return Colors.orange;
      case "fitness":
        return Colors.green;
      default:
        return Colors.blue;
    }
  }

  // GAIN PLAN
  Widget _gainPlan() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildGoalHeader(
            title: "Muscle Building Plan",
            subtitle: "Calorie Surplus • High Protein",
            color: Colors.blue,
            icon: Icons.trending_up,
          ),

          const SizedBox(height: 20),

          // Daily Calories
          _buildInfoCard(
            title: "Daily Target",
            items: [
              "Calories: 3,000 - 3,500 kcal",
              "Protein: 150-180g",
              "Carbs: 400-450g",
              "Fats: 80-100g",
            ],
            color: Colors.blue.shade50,
          ),

          const SizedBox(height: 20),

          // Meal Schedule
          _buildSectionTitle("Meal Schedule (6 meals/day)"),

          _buildMealCard(
            time: "7:00 AM - Breakfast",
            title: "Protein Pancakes",
            description: "3 eggs, oats, banana, protein powder",
            calories: "650 kcal",
            color: Colors.blue.shade100,
          ),

          _buildMealCard(
            time: "10:00 AM - Snack",
            title: "Mass Gainer Shake",
            description: "Protein powder, banana, peanut butter, milk",
            calories: "550 kcal",
            color: Colors.blue.shade50,
          ),

          _buildMealCard(
            time: "1:00 PM - Lunch",
            title: "Chicken & Rice Bowl",
            description: "250g chicken breast, brown rice, veggies, avocado",
            calories: "750 kcal",
            color: Colors.blue.shade100,
          ),

          _buildMealCard(
            time: "4:00 PM - Pre-Workout",
            title: "Greek Yogurt & Nuts",
            description: "Greek yogurt, almonds, honey, berries",
            calories: "400 kcal",
            color: Colors.blue.shade50,
          ),

          _buildMealCard(
            time: "7:00 PM - Dinner",
            title: "Salmon & Sweet Potato",
            description: "Salmon fillet, sweet potato, broccoli, olive oil",
            calories: "700 kcal",
            color: Colors.blue.shade100,
          ),

          _buildMealCard(
            time: "10:00 PM - Bedtime",
            title: "Casein Shake",
            description: "Casein protein, cottage cheese, flax seeds",
            calories: "350 kcal",
            color: Colors.blue.shade50,
          ),

          const SizedBox(height: 20),

          // Tips
          _buildTipsCard(
            tips: [
              "Drink 1L water post-workout with electrolytes",
              "Sleep 8+ hours for muscle recovery",
              "Track weight weekly - aim for 0.5kg gain/week",
              "Include creatine supplementation",
            ],
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // SHRED PLAN
  Widget _shredPlan() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildGoalHeader(
            title: "Fat Loss Plan",
            subtitle: "Calorie Deficit • Metabolic Boost",
            color: Colors.orange,
            icon: Icons.local_fire_department,
          ),

          const SizedBox(height: 20),

          // Daily Calories
          _buildInfoCard(
            title: "Daily Target",
            items: [
              "Calories: 1,800 - 2,000 kcal",
              "Protein: 120-140g",
              "Carbs: 150-180g",
              "Fats: 50-60g",
            ],
            color: Colors.orange.shade50,
          ),

          const SizedBox(height: 20),

          // Meal Schedule
          _buildSectionTitle("Meal Schedule (4 meals + 2 snacks)"),

          _buildMealCard(
            time: "7:00 AM - Breakfast",
            title: "Egg White Omelette",
            description: "5 egg whites, spinach, mushrooms, turkey slices",
            calories: "280 kcal",
            color: Colors.orange.shade100,
          ),

          _buildMealCard(
            time: "10:00 AM - Snack",
            title: "Green Apple & Almonds",
            description: "1 apple, 15 almonds, green tea",
            calories: "180 kcal",
            color: Colors.orange.shade50,
          ),

          _buildMealCard(
            time: "1:00 PM - Lunch",
            title: "Grilled Chicken Salad",
            description: "200g chicken, mixed greens, cucumber, lemon dressing",
            calories: "420 kcal",
            color: Colors.orange.shade100,
          ),

          _buildMealCard(
            time: "4:00 PM - Pre-Workout",
            title: "BCAA Drink + Rice Cake",
            description: "BCAA supplement, 2 rice cakes",
            calories: "120 kcal",
            color: Colors.orange.shade50,
          ),

          _buildMealCard(
            time: "7:00 PM - Dinner",
            title: "Lean Fish & Asparagus",
            description: "200g tilapia, roasted asparagus, quinoa",
            calories: "450 kcal",
            color: Colors.orange.shade100,
          ),

          _buildMealCard(
            time: "9:00 PM - Bedtime",
            title: "Casein Pudding",
            description: "Casein protein, sugar-free jello",
            calories: "150 kcal",
            color: Colors.orange.shade50,
          ),

          const SizedBox(height: 20),

          // Fasting Window
          _buildInfoCard(
            title: "Intermittent Fasting",
            items: [
              "16:8 Fasting Protocol",
              "Eating window: 12 PM - 8 PM",
              "Black coffee/tea allowed during fast",
              "Drink 3L water daily",
            ],
            color: Colors.orange.shade50,
          ),

          const SizedBox(height: 20),

          // Tips
          _buildTipsCard(
            tips: [
              "HIIT workouts 4x/week for fat burning",
              "Avoid processed sugars completely",
              "Track measurements weekly, not just weight",
              "Get 7-8 hours quality sleep",
            ],
          ),

          const SizedBox(height: 30),
        ],
      ),
    );
  }

  // FITNESS PLAN
  Widget _fitnessPlan() {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          _buildGoalHeader(
            title: "Balanced Fitness Plan",
            subtitle: "Maintenance • Overall Health",
            color: Colors.green,
            icon: Icons.favorite,
          ),

          const SizedBox(height: 20),

          // Daily Calories
          _buildInfoCard(
            title: "Daily Target",
            items: [
              "Calories: 2,200 - 2,500 kcal",
              "Protein: 100-120g",
              "Carbs: 250-300g",
              "Fats: 60-70g",
            ],
            color: Colors.green.shade50,
          ),

          const SizedBox(height: 20),

          // Meal Schedule
          _buildSectionTitle("Balanced 5-Meal Schedule"),

          _buildMealCard(
            time: "7:30 AM - Breakfast",
            title: "Avocado Toast & Eggs",
            description: "Whole grain toast, avocado, 2 eggs, tomatoes",
            calories: "450 kcal",
            color: Colors.green.shade100,
          ),

          _buildMealCard(
            time: "11:00 AM - Snack",
            title: "Greek Yogurt Bowl",
            description: "Greek yogurt, mixed berries, chia seeds, honey",
            calories: "280 kcal",
            color: Colors.green.shade50,
          ),

          _buildMealCard(
            time: "1:30 PM - Lunch",
            title: "Quinoa Buddha Bowl",
            description: "Quinoa, chickpeas, roasted veggies, tahini",
            calories: "520 kcal",
            color: Colors.green.shade100,
          ),

          _buildMealCard(
            time: "4:30 PM - Snack",
            title: "Protein Smoothie",
            description: "Whey protein, banana, spinach, almond milk",
            calories: "320 kcal",
            color: Colors.green.shade50,
          ),

          _buildMealCard(
            time: "7:30 PM - Dinner",
            title: "Lean Protein & Veggies",
            description: "Salmon/turkey, sweet potato, green beans",
            calories: "550 kcal",
            color: Colors.green.shade100,
          ),

          const SizedBox(height: 20),

          // Weekly Variety
          _buildSectionTitle("Weekly Meal Variety"),

          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.green.shade50,
              borderRadius: BorderRadius.circular(12),
              border: Border.all(color: Colors.green.shade100),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Rotate these proteins:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildChip("Chicken Breast"),
                    _buildChip("Salmon"),
                    _buildChip("Tofu"),
                    _buildChip("Lean Beef"),
                    _buildChip("Eggs"),
                    _buildChip("Lentils"),
                  ],
                ),
                const SizedBox(height: 12),
                const Text(
                  "Vegetable rotation:",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                ),
                const SizedBox(height: 8),
                Wrap(
                  spacing: 8,
                  runSpacing: 8,
                  children: [
                    _buildChip("Broccoli"),
                    _buildChip("Spinach"),
                    _buildChip("Bell Peppers"),
                    _buildChip("Carrots"),
                    _buildChip("Zucchini"),
                    _buildChip("Cauliflower"),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // Tips
          _buildTipsCard(
            tips: [
              "Mix cardio & strength training 5x/week",
              "Include 1 cheat meal per week",
              "Stay hydrated - drink 2.5L water daily",
              "Practice mindful eating - no distractions",
              "Include omega-3s (fish, walnuts, flax)",
            ],
          ),

          const SizedBox(height: 30),

          // Action Button
          Center(
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.restaurant_menu),
              label: const Text("Generate Shopping List"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                foregroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                  vertical: 12,
                ),
              ),
            ),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Reusable Widgets
  Widget _buildGoalHeader({
    required String title,
    required String subtitle,
    required Color color,
    required IconData icon,
  }) {
    return Container(
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(color: color.withOpacity(0.3)),
      ),
      child: Row(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(color: color, shape: BoxShape.circle),
            child: Icon(icon, color: Colors.white, size: 28),
          ),
          const SizedBox(width: 16),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: color,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: TextStyle(fontSize: 14, color: color.withOpacity(0.8)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoCard({
    required String title,
    required List<String> items,
    required Color color,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 12),
          ...items.map(
            (item) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: [
                  const Icon(Icons.circle, size: 8),
                  const SizedBox(width: 12),
                  Expanded(child: Text(item)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: Colors.black87,
        ),
      ),
    );
  }

  Widget _buildMealCard({
    required String time,
    required String title,
    required String description,
    required String calories,
    required Color color,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: color.withOpacity(0.5)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                time,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Text(
                  calories,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 4),
          Text(
            description,
            style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
          ),
        ],
      ),
    );
  }

  Widget _buildTipsCard({required List<String> tips}) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.grey.shade50,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade300),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.lightbulb_outline, color: Colors.amber),
              SizedBox(width: 8),
              Text(
                "Pro Tips",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ],
          ),
          const SizedBox(height: 12),
          ...tips.map(
            (tip) => Padding(
              padding: const EdgeInsets.symmetric(vertical: 6),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(Icons.check_circle, size: 16, color: Colors.green),
                  const SizedBox(width: 12),
                  Expanded(child: Text(tip)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildChip(String label) {
    return Chip(
      label: Text(label),
      backgroundColor: Colors.green.shade100,
      labelStyle: const TextStyle(fontSize: 12),
    );
  }
}
// class MealPlanPage extends StatelessWidget {
//   final String goal;
//   const MealPlanPage({super.key, required this.goal});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Colors.blue,
//         title: Text("${goal.toUpperCase()} MEAL PLAN PAGE"),
//       ),
//       body: _buildContent(),
//     );
//   }
// }

// Widget _buildContent() {
//   switch (goal) {
//     case "gain":
//       return _gainPlan();
//     case "shred":
//       return _shredPlan();
//     case "fitness":
//       return _fitnessPlan();
//     default:
//       return Center(child: Text("Waah.,.,/n sa Utado??"));
//   }
// }
// Widget _gainPlan() {
//   return Center(child: Text("Gain Plan Content"));
// }
