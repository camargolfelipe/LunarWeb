import 'package:flutter/material.dart';
import 'package:myapp/helper.dart';

class FormLogin extends StatelessWidget {
  TextEditingController controller;
  bool obscure;
  IconData icon;
  FormLogin(this.controller, this.obscure, this.icon);
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 96.0),
      child: Container(
          height: 40,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40), color: fonteCadasto2),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextFormField(
                obscureText: obscure,
                controller: controller,
                style: TextStyle(),
                decoration: InputDecoration(
                    border: InputBorder.none,
                    suffixIcon: Icon(
                      icon,
                      color: fonteCadastro1,
                    ))),
          )),
    );
  }
}
