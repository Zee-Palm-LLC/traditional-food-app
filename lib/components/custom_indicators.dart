import 'package:flutter/material.dart';

class CustomIndicator extends StatelessWidget {
  final int currentIndex;
  final int index;
  const CustomIndicator(
      {super.key, required this.currentIndex, required this.index});

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      width: currentIndex == index ? 80 : 30,
      height: 5,
      margin: const EdgeInsets.symmetric(horizontal: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: currentIndex == index ? Colors.orange : Colors.grey,
      ),
    );
  }
}
