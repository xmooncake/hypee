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
    if (icon != null) {
      return OutlinedButton.icon(
        onPressed: onPressed,
        icon: Icon(icon),
        label: Text(label),
      );
    }

    return OutlinedButton(
      onPressed: onPressed,
      child: Text(label),
    );
  }
}
