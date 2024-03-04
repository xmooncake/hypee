import 'package:flutter/material.dart';

class SecondaryCard extends StatelessWidget {
  const SecondaryCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: const Color.fromARGB(255, 240, 240, 240),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 4),
      child: child,
    );
  }
}
