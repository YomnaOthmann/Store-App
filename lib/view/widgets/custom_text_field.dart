import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField(
      {super.key,
      required this.label,
      this.validate,
      this.type,
      this.isPass,
      this.controller});
  final String label;
  final String? Function(String?)? validate;
  final TextEditingController? controller;
  final TextInputType? type;
  final bool? isPass;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isPass ?? false,
      keyboardType: type,
      controller: controller,
      validator: validate,
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(
          color: Colors.grey,
        ),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            width: 1,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.grey[700]!,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(16),
        ),
      ),
    );
  }
}
