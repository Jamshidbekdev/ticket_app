import 'package:flutter/material.dart';

class ThickContainer extends StatelessWidget {
  final color;

  const ThickContainer({required this.color,super.key});

  @override
  Widget build(BuildContext context) {
    
    return Container(
      padding: const EdgeInsets.all(3),
      decoration: BoxDecoration(
        // color: Colors.red,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color: color)
      ),
    );
  }
}