import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final Color color;
  const CustomButton({
    Key? key,
    required this.label,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: onPressed,
      child: Text(
        label,
        style: const TextStyle(fontSize: 18),
      ),
      style: OutlinedButton.styleFrom(
        primary: Colors.white,
        backgroundColor: color,
        padding: const EdgeInsets.all(14),
        minimumSize: Size(MediaQuery.of(context).size.width, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  onPressed() {}
}
