import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class EmailFormField extends StatelessWidget {
  final TextEditingController controller;

  const EmailFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Email',
      ),
      validator: (value) => (value ?? '').isEmpty
          ? null
          : EmailValidator.validate(value ?? '')
              ? null
              : "Please enter a valid email.",
    );
  }
}
