import 'package:flutter/material.dart';

class ReuseCard extends StatelessWidget {
  final Color color_;
  final Widget? cardChild;

  const ReuseCard({
    super.key,
    required this.color_,
    this.cardChild,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: color_,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: cardChild,
    );
  }
}