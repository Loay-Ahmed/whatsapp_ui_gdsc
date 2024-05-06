import 'package:flutter/material.dart';

class BottomNavBarItem extends StatelessWidget {
  final String name;
  final IconData? icon;
  final Color? color;
  const BottomNavBarItem({
    super.key,
    required this.name,
    required this.icon,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: 60,
          height: 30,
          decoration: BoxDecoration(
            color: color,
            borderRadius: const BorderRadius.horizontal(
              left: Radius.circular(20),
              right: Radius.circular(20),
            ),
          ),
          child: Icon(
            icon,
            color: const Color.fromARGB(255, 214, 252, 211),
            size: 25,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(
            top: 10,
          ),
          child: Text(
            name,
            style: const TextStyle(
                color: Colors.white70,
                fontWeight: FontWeight.bold,
                fontSize: 13),
          ),
        )
      ],
    );
  }
}
