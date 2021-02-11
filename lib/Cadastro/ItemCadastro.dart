import 'package:flutter/material.dart';
import 'package:myapp/helper.dart';

class FormFieldCadastro extends StatelessWidget {
  bool obscure;
  TextEditingController controller;
  FormFieldCadastro(this.obscure, this.controller);
  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 5,
      child: Padding(
        padding: const EdgeInsets.only(
            bottom: 20.0, top: 8.0, right: 10.0, left: 10.0),
        child: Container(
            width: 150,
            height: 40,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(40), color: fonteCadasto2),
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: TextFormField(
                  controller: controller,
                  obscureText: obscure,
                  style: TextStyle(),
                  decoration: InputDecoration(
                    border: InputBorder.none,
                  )),
            )),
      ),
    );
  }
}

class FormRowCadastro extends StatelessWidget {
  List<Widget> content;
  String name;
  FormRowCadastro(this.name, this.content);
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(name),
        Row(
          children: content,
        ),
      ],
    );
  }
}
