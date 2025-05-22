import 'package:flutter/material.dart';
import 'package:food_order_service/models/food_models.dart';
import 'package:food_order_service/page/home_page.dart';
import 'package:food_order_service/widget/custom_icon_button.dart';

class FoodDetialPage extends StatefulWidget {
  final FoodModel food;
  const FoodDetialPage({super.key, required this.food});

  @override
  State<FoodDetialPage> createState() => _FoodDetialPageState();
}

class _FoodDetialPageState extends State<FoodDetialPage> {
  FoodModel get food => widget.food;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          buildImage(),
          buildFoodInfo(),
          buildOrderButton(),
          buildAppBar(),
        ],
      ),
    );
  }

  Widget buildIngredient() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ingredient",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Container(
            height: 100,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: List.generate(
                10,
                (index) => Container(
                  child: Card(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(8),
                      child: Image.network(
                        "https://source.unsplash.com/200x200/?vegetable&sig=$index",
                        fit: BoxFit.cover,
                        errorBuilder: (context, error, stackTrace) {
                          return Container(
                            color: Colors.grey[200],
                            child: Icon(Icons.broken_image, color: Colors.grey),
                          );
                        },
                      ),
                    ),
                  ),
                  width: 100,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDescription() {
    return Container(
      margin: EdgeInsets.only(top: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Ingredient",
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(food.description),
        ],
      ),
    );
  }

  Widget buildFoodInfo() {
    return SingleChildScrollView(
      padding: EdgeInsets.symmetric(
        vertical: MediaQuery.of(context).size.height / 2 - 16,
      ),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.vertical(top: Radius.circular(24)),
        ),
        padding: EdgeInsets.symmetric(vertical: 24, horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  food.name,
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
                Text(
                  "\$${food.price}",
                  style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ],
            ),
            SizedBox(height: 12),
            Text("Italian soup"),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                ...List.generate(
                  5,
                  (index) => Icon(Icons.star, color: Colors.yellow),
                ),
                Text("${food.rating}"),
                Text("(1k+)"),
                Spacer(),
                CustomIconButton(
                  icon: Icon(Icons.remove, size: 16),
                  onPressed: () {},
                  backgroundColor: Colors.black.withOpacity(0.1),
                  margin: EdgeInsets.all(0),
                ),
                Text("1", style: TextStyle(fontSize: 18)),
                CustomIconButton(
                  icon: Icon(Icons.add, size: 16),
                  onPressed: () {},
                  backgroundColor: Colors.black.withOpacity(0.1),
                  margin: EdgeInsets.all(0),
                ),
              ],
            ),
            buildDescription(),
            buildIngredient(),
          ],
        ),
      ),
    );
  }

  Widget buildAppBar() {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CustomIconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.of(context).pop();
              },
              margin: EdgeInsets.all(0),
            ),
            CustomIconButton(
              icon: Icon(Icons.favorite, color: Colors.red),
              backgroundColor: Colors.white.withOpacity(0.5),
              onPressed: () {},
              margin: EdgeInsets.all(0),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildImage() {
    return Container(
      height: MediaQuery.of(context).size.height / 2,
      child: Image.network(food.image, fit: BoxFit.cover),
    );
  }
}

Widget buildOrderButton() {
  return Align(
    alignment: Alignment.bottomCenter,
    child: Material(
      elevation: 3,
      color: Colors.white,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Row(
            children: [
              CustomIconButton(
                icon: Icon(Icons.add_shopping_cart, color: Colors.green),
                onPressed: () {},
                borderColor: Colors.grey,
                margin: EdgeInsets.all(0),
              ),
              SizedBox(width: 16),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Place an Order",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ),
  );
}
