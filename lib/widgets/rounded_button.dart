import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  final String? text;
  final double fontSize;
  final VoidCallback? press;
  final double verticalPadding;

  const RoundedButton({
    Key? key, // Make 'key' nullable
    this.text,
    this.press,
    this.verticalPadding = 16,
    this.fontSize = 16,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 16),
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 30),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          boxShadow: [
            BoxShadow(
              offset: const Offset(0, 15),
              blurRadius: 5,
              color: const Color(0xFF666666).withOpacity(.11),
            ),
          ],
        ),
        child: Text(
          text ?? 'Button', // Default value for text if null
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
