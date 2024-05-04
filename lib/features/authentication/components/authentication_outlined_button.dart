import 'package:flutter/material.dart';

class AuthenticationOutlinedButton extends StatelessWidget {
  const AuthenticationOutlinedButton({
    super.key,
    this.icon,
    required this.label,
    required this.onPressed,
  });

  final Function() onPressed;
  final IconData? icon;
  final String label;

  @override
  Widget build(BuildContext context) {
    final label = Text(this.label, style: const TextStyle(color: Colors.black));

    if (icon != null) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: label,
      );
    }

    return OutlinedButton(
      onPressed: onPressed,
      child: label,
    );
  }
}
