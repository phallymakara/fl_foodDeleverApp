import 'package:flutter/material.dart';

class FilterButton extends StatelessWidget {
  final String title;
  final bool isSelected;
  const FilterButton({
    super.key,
    required this.title,
    required this.isSelected,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 8),
      child: OutlinedButton(
        onPressed: () {},
        style: OutlinedButton.styleFrom(
          backgroundColor: isSelected ? Colors.green : Colors.white,
        ),
        child: Text(
          title,
          style: TextStyle(color: isSelected ? Colors.white : Colors.green),
        ),
      ),
    );
  }
}
