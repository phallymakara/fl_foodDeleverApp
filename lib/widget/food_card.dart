import 'package:flutter/material.dart';
import 'package:food_order_service/models/food_models.dart';
import 'package:food_order_service/page/food_detial_page.dart';
import 'package:food_order_service/widget/custom_icon_button.dart';

class FoodCard extends StatelessWidget {
  final FoodModel food;
  const FoodCard({super.key, required this.food});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => FoodDetialPage(food: food)),
        );
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.7,
        margin: EdgeInsets.only(right: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [buildFoodImage(), SizedBox(height: 12), buildFoodInfo()],
        ),
      ),
    );
  }

  Widget buildFoodImage() {
    return Stack(
      children: [
        ClipRRect(
          borderRadius: BorderRadiusGeometry.circular(12),
          child: Image.network(
            food.image,
            height: 150,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: CustomIconButton(
            margin: EdgeInsets.only(left: 2),
            elevation: 0,
            radius: 32,
            onPressed: () {},
            icon: Icon(Icons.favorite, color: Colors.red),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black87.withOpacity(0.5),
            borderRadius: BorderRadius.circular(4),
          ),
          padding: EdgeInsets.all(4),
          margin: EdgeInsets.all(4),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(Icons.star, color: Colors.yellow, size: 12),
              SizedBox(width: 2),
              Text('${food.rating}', style: TextStyle(color: Colors.white)),
              SizedBox(width: 3),
              Text('1k+', style: TextStyle(color: Colors.white70)),
            ],
          ),
        ),
      ],
    );
  }

  Widget buildFoodInfo() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          food.name,
          style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
        ),
        Text(
          "\$${food.price}",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}
