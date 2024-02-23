import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon
({
  super.key,
  required this.icon,
  this.onPressed,
  this.color = Colors.black,
});
  
final IconData icon;
final Function()? onPressed;
final Color color;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: color,
        size: 28,
      ),
    );
  }





}