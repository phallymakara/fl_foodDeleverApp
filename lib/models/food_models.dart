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
    'Delicious creamy soup with corn', // updated description
    'https://picsum.photos/200/200',
    'Cream and Corn Soup',
    12.23,
    4.6,
  ),
  FoodModel(
    'Rich, warm and tasty', // updated description
    'https://picsum.photos/200/200',
    'Cream and Corn Soup',
    12.23,
    4.6,
  ),
  FoodModel(
    'Perfect for winter days', // updated description
    'https://picsum.photos/200/200',
    'Cream and Corn Soup',
    12.23,
    4.6,
  ),
  FoodModel(
    'Best served hot!', // updated description
    'https://picsum.photos/200/200',
    'Cream and Corn Soup',
    12.23,
    4.6,
  ),
];
