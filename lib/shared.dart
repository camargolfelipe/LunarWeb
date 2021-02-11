import 'package:flutter/material.dart';
import 'package:myapp/helper.dart';

class MainButton extends StatelessWidget {
  Function rota;
  MainButton(this.rota);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        child: Text("Cadastre-se",
            style: TextStyle(
                fontWeight: FontWeight.bold, color: grey.withOpacity(0.6))),
        onTap: rota);
  }
}
