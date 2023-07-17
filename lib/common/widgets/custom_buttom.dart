import 'package:flutter/material.dart';

class CustomButtom extends StatelessWidget {
  final String text;
  final VoidCallback onTap;

  const CustomButtom({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
        maximumSize: const Size(double.infinity, 50),
      ),
      child: Text(
        text,
      ),
    );
  }
}
