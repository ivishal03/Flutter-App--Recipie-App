import 'package:flutter/material.dart';

class MealPlanScreen extends StatelessWidget {
  const MealPlanScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Meal Plan"),
        backgroundColor: Colors.greenAccent,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          const Text(
            "Today's Meal Plan",
            style: TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 16),
          _buildMealCard(
            context,
            mealType: "Breakfast",
            mealTime: "8:00 AM",
            mealItems: ["Pancakes", "Scrambled Eggs", "Orange Juice"],
            color: Colors.orangeAccent,
          ),
          const SizedBox(height: 16),
          _buildMealCard(
            context,
            mealType: "Lunch",
            mealTime: "12:30 PM",
            mealItems: ["Grilled Chicken", "Salad", "Iced Tea"],
            color: Colors.lightGreen,
          ),
          const SizedBox(height: 16),
          _buildMealCard(
            context,
            mealType: "Dinner",
            mealTime: "7:30 PM",
            mealItems: ["Steak", "Mashed Potatoes", "Red Wine"],
            color: Colors.blueAccent,
          ),
        ],
      ),
    );
  }

  Widget _buildMealCard(
      BuildContext context, {
        required String mealType,
        required String mealTime,
        required List<String> mealItems,
        required Color color,
      }) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      elevation: 4,
      color: color.withOpacity(0.9),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              mealType,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              "Time: $mealTime",
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w500,
                color: Colors.white70,
              ),
            ),
            const SizedBox(height: 8),
            ...mealItems.map(
                  (item) => Text(
                "- $item",
                style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
