import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton(
      {super.key, required this.textTitle, required this.pressed});
  final String textTitle;
  final VoidCallback pressed;
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.deepOrange[300],
            foregroundColor: Colors.black,
            minimumSize: Size(250, 50)),
        onPressed: pressed,
        child: Text(
          textTitle,
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}
