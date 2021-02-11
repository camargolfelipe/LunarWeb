import 'package:flutter/material.dart';
import 'package:myapp/helper.dart';

class TextMenu extends StatelessWidget {
  String title;
  TextMenu(this.title);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        title,
        style: TextStyle(color: white, fontSize: 18),
      ),
    );
  }
}
