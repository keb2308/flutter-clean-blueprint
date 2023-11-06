import 'package:flutter/material.dart';

class AuthenticationButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const AuthenticationButton({
    super.key,
    required this.label,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      height: 60,
      minWidth: double.infinity,
      color: Colors.blue,
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
    );
  }
}
