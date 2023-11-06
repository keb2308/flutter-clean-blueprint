import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class PasswordFormField extends StatelessWidget {
  final TextEditingController controller;

  /// 8 characters with at least 1 letter and 1 number:
  final RegExp passReg = RegExp("^(?=.*[A-Za-z])(?=.*\\d)[A-Za-z\\d]{8,}\$");

  PasswordFormField({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: controller,
      obscureText: true,
      decoration: const InputDecoration(
        border: OutlineInputBorder(),
        hintText: 'Password',
      ),
      inputFormatters: [
        FilteringTextInputFormatter.deny(RegExp(r'\s')),
      ],
      validator: (value) => (value ?? '').isEmpty
          ? null
          : passReg.hasMatch(value ?? '')
              ? null
              : "At least 8 characters, a letter and a number.",
    );
  }
}
