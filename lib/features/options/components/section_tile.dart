import 'package:flutter/material.dart';

class SectionTile extends StatelessWidget {
  const SectionTile({
    required this.icon,
    required this.label,
    required this.onTap,
  });

  final IconData icon;
  final String label;
  final Function() onTap;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      leading: Icon(icon),
      title: Text(label),
      onTap: onTap,
    );
  }
}
