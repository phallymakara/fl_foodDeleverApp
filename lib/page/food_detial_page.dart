import 'package:flutter/material.dart';
import 'package:food_order_service/models/food_models.dart';

class FoodDetialPage extends StatefulWidget {
  final FoodModel food;
  const FoodDetialPage({super.key, required this.food});

  @override
  State<FoodDetialPage> createState() => _FoodDetialPageState();
}

class _FoodDetialPageState extends State<FoodDetialPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
