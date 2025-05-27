import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String name;
  final IconData? icon;
  final GestureTapCallback? onPressed;
  final Color? colour;

  // Constructor
  const MyButton({
    super.key,
    required this.name,
    this.icon,
    this.onPressed,
    this.colour,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        margin: EdgeInsets.all(20),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: colour ?? Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Icon(
            icon,
            size: 30,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 24.0,
            ),
          ),
        ]),
      ),
    );
  }
}
