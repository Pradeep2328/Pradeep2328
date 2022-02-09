import 'package:flutter/material.dart';

class PasswordFormField extends StatefulWidget {
  final TextEditingController controller;
  final String label;

  const PasswordFormField(
      {required this.controller, required this.label, Key? key})
      : super(key: key);

  @override
  State<PasswordFormField> createState() => _PasswordFormFieldState();
}

class _PasswordFormFieldState extends State<PasswordFormField> {
  bool _obscurePassword = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: _obscurePassword,
      controller: widget.controller,
      decoration: InputDecoration(
        icon: const Icon(Icons.password),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() => _obscurePassword = !_obscurePassword);
          },
          icon:
              Icon(!_obscurePassword ? Icons.visibility : Icons.visibility_off),
        ),
        label: Text(widget.label),
        hintText: 'Enter your ${widget.label}',
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter ${widget.label}'; //Validation error
        }
        return null; //Validation Success
      },
    );
  }
}

class UsernameTextFormField extends StatelessWidget {
  final TextEditingController controller;
  final String label;
  const UsernameTextFormField({
    required this.controller,
    required this.label,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        icon: const Icon(Icons.person),
        label: Text(label),
        hintText: 'Enter your $label',
        border: const OutlineInputBorder(),
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter $label'; //Validation error
        }
        return null; //Validation Success
      },
    );
  }
}
