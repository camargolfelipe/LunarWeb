import 'package:flutter/material.dart';

class Circulo extends StatelessWidget {
  Color color;
  Circulo(this.color);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: Container(
        height: 20,
        width: 20,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(80), color: color),
      ),
    );
  }
}
