import 'package:flutter/material.dart';

class Categcory {
  String name;
  String image;
  int totalItem;

  Categcory(this.image, this.name, this.totalItem);
}

final List<Categcory> category = [
  Categcory('https://picsum.photos/200/200/?food', 'Food', 23),
  Categcory('https://picsum.photos/200/200/?dessert', 'Dessert', 168),
  Categcory('https://picsum.photos/200/200/?snack', 'Snacks', 43),
  Categcory('https://picsum.photos/200/200/?meat', 'Meat', 35),
  Categcory('https://picsum.photos/200/200/?food', 'Street Food', 64),
  Categcory('', 'food', 37),
];
