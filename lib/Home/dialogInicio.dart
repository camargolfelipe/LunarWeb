import 'package:flutter/material.dart';
import 'package:myapp/helper.dart';

class DialogInicio {
  inicio(context) {
    var nome = localStorage.get('nome');
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          content: Container(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: 800,
                  height: 300,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            'Olá $nome, Bem vinda\na Lunar, venha conhecer um\npouco mais sobre nós e\naproveite as compras!',
                            style: TextStyle(color: mainColor, fontSize: 32),
                          ),
                          SizedBox(
                            height: 70,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(16.0),
                            child: Container(
                              height: 40,
                              width: 168,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius: BorderRadius.circular(80)),
                              child: GestureDetector(
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Center(
                                    child: Text(
                                      'OK!',
                                      style: TextStyle(color: white),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.pop(context);
                                },
                              ),
                            ),
                          ),
                        ],
                      ),
                      Image.asset('assets/in.png')
                    ],
                  ),
                )),
          ),
        );
      },
    );
  }
}
