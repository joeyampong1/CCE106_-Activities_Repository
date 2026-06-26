import 'package:flutter/material.dart';

class PriceText extends StatelessWidget {
  final double price;
  final double fontSize;
  final FontWeight fontWeight;
  final Color color;

  const PriceText({
    super.key,
    required this.price,
    this.fontSize = 14, 
    this.fontWeight = FontWeight.w600,
    this.color = Colors.red,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '\$${price.toStringAsFixed(2)}',
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}