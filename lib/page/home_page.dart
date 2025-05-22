import 'package:flutter/material.dart';
import 'package:food_order_service/models/categcory_models.dart';
import 'package:food_order_service/models/food_models.dart';
import 'package:food_order_service/widget/custom_icon_button.dart';
import 'package:food_order_service/widget/filter_button.dart';
import 'package:food_order_service/widget/food_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.symmetric(vertical: 16, horizontal: 12),
          children: [
            buildHeader(),
            SizedBox(height: 20),
            buildSearch(),
            buildFilter(),
            SizedBox(height: 20),
            buildFoodList(),
            buildSectionTitle(),
            buildCategoryList(),
          ],
        ),
      ),
    );
  }

  Widget buildHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
            Expanded(child: SizedBox()),
            CircleAvatar(
              backgroundImage: NetworkImage('https://picsum.photos/200/300'),
            ),
          ],
        ),
        SizedBox(height: 18),
        Text('HELLO X', style: TextStyle(fontSize: 19)),
        Text(
          'Food Delvery APP',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }

  Widget buildSearch() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            decoration: InputDecoration(
              hintText: 'Search Food',

              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              contentPadding: EdgeInsets.all(8),
              suffixIcon: Icon(Icons.search),
            ),
          ),
        ),
        CustomIconButton(
          margin: EdgeInsets.only(left: 8),
          icon: Icon(Icons.filter_list),
          backgroundColor: Colors.green,
          onPressed: () {},
        ),
      ],
    );
  }

  Widget buildFilter() {
    return Container(
      height: 32,
      margin: EdgeInsets.only(top: 15),
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          FilterButton(title: 'popular', isSelected: true),
          FilterButton(title: 'newItem', isSelected: false),
          FilterButton(title: 'Hot Deal', isSelected: false),
          FilterButton(title: 'combo pack', isSelected: false),
          FilterButton(title: 'khmer food', isSelected: false),
        ],
      ),
    );
  }

  Widget buildFoodList() {
    return Container(
      height: 250,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: foodList.length,
        itemBuilder: (BuildContext context, int index) {
          FoodModel food = foodList[index];
          return FoodCard(food: food);
        },
      ),
    );
  }

  Widget buildSectionTitle() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Explore Category',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        TextButton(
          onPressed: () {
            // implement function here
          },
          child: Text('View all'),
        ),
      ],
    );
  }

  Widget buildCategoryList() {
    return GridView.builder(
      itemCount: category.length,
      shrinkWrap: true,
      primary: false,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
      ),
      itemBuilder: (context, index) {
        final Categcory categcory = category[index];
        return Card(child: Text(categcory.name)); // Empty card
      },
    );
  }
}
