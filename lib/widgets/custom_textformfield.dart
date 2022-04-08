import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final Function(String) onChanged;
  final String label;
  final bool obscuredText;

  const CustomTextFormField({
    Key? key,
    required this.onChanged,
    required this.label,
    this.obscuredText = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          ),
        ),
        contentPadding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
        labelStyle: const TextStyle(fontSize: 18),
      ),
    );
  }
}
