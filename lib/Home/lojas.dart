import 'package:flutter/material.dart';
import 'package:myapp/helper.dart';

class Lojas extends StatelessWidget {
  Widget widget;
  Lojas(this.widget);
  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: Container(
        width: 176,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: black,
        ),
        child: Center(child: widget),
      ),
    ));
  }
}
