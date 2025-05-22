import 'package:food_order_service/constant/app_constant.dart';

class FoodModel {
  String name;
  double price;
  String description;
  double rating;
  String image;

  FoodModel(this.description, this.image, this.name, this.price, this.rating);
}

final List<FoodModel> foodList = [
  FoodModel(
    LOREM_IPSUM, // updated description
    'https://picsum.photos/200/200/?soup',
    'Cream and Corn Soup',
    12.23,
    4.9,
  ),
  FoodModel(
    LOREM_IPSUM, // updated description
    'https://picsum.photos/200/200/?chicken',
    'Chicken and Rice',
    15.95,
    4.8,
  ),
  FoodModel(
    LOREM_IPSUM, // updated description
    'https://picsum.photos/200/200/?dessert',
    'dessert and food',
    12.23,
    4.0,
  ),
  FoodModel(
    LOREM_IPSUM, // updated description
    'https://picsum.photos/200/200/?cream',
    'Cream ',
    1.3,
    4.9,
  ),
];
