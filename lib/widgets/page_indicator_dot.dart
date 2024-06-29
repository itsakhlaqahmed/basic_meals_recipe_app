import 'package:flutter/material.dart';

class IndicatorDot extends StatelessWidget {
  const IndicatorDot({super.key, required this.isActive});

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: isActive ? 20 : 10,
      height: 10,
      margin: const EdgeInsets.only(right: 5),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
        color: Color.fromARGB(255, 241, 226, 81),
        
      ),
    );
  }
}
