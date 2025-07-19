import 'package:flutter/material.dart';
import 'package:librix/consttants.dart';

class TwoSideRounderButton extends StatelessWidget {
  final String text;
  final double radious;
  final Function press;
  const TwoSideRounderButton({
    Key? key,
    required this.text,
    this.radious = 29,
    required this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => press(),
      child: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.symmetric(vertical: 7),
        decoration: BoxDecoration(
          color: kBlackColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radious),
            bottomRight: Radius.circular(radious),
          ),
        ),
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
