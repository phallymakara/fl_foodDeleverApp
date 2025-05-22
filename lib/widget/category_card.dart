import 'package:flutter/material.dart';
import 'package:food_order_service/models/categcory_models.dart';

class CategoryCard extends StatelessWidget {
  final Categcory category;

  const CategoryCard({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                category.image,
                width: 60,
                height: double.infinity,
                fit: BoxFit.cover, // optional
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  category.name,
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                Text("${category.totalItem}+ items"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
