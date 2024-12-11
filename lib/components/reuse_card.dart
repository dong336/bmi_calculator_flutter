import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Color color_;
  final Widget? cardChild;
  final Function onPress;

  const ReuseCard({
    super.key,
    required this.color_,
    this.cardChild,
    required this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onPress(),
      child: Container(
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color_,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: cardChild,
      ),
    );
  }
}