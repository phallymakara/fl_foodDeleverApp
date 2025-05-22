import 'package:flutter/material.dart';

class CustomIconButton extends StatelessWidget {
  final Widget icon;
  final void Function() onPressed;
  final Color backgroundColor;
  final double radius;
  final Color borderColor;
  final EdgeInsets margin;
  final double elevation;
  const CustomIconButton({
    super.key,
    required this.icon,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.radius = 8,
    this.borderColor = Colors.transparent,
    required this.margin,
    this.elevation = 0,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: backgroundColor,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(radius),
        side: BorderSide(width: 0.2, color: borderColor),
      ),
      child: InkWell(
        onTap: onPressed ?? () {},
        child: Padding(padding: const EdgeInsets.all(8.0), child: icon),
      ),
    );
  }
}
