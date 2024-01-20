import 'package:flutter/material.dart';

class StriaghtLine extends StatelessWidget {
  final double size;
  final Color? color;
  const StriaghtLine({super.key, required this.size, this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      width: 2,
      decoration: BoxDecoration(color: color ?? Colors.white),
    );
  }
}
