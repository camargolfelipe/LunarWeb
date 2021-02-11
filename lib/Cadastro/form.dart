import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:myapp/Cadastro/ItemCadastro.dart';
import 'package:myapp/Login/login.dart';
import 'package:myapp/helper.dart';

class CadastroForm {
  TextEditingController nome = TextEditingController();
  TextEditingController sobrenome = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController senha = TextEditingController();
  TextEditingController repetirsenha = TextEditingController();
  TextEditingController dia = TextEditingController();
  TextEditingController mes = TextEditingController();
  TextEditingController ano = TextEditingController();
  TextEditingController ddd = TextEditingController();
  TextEditingController celular = TextEditingController();

  cadastro(context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        // retorna um objeto do tipo Dialog
        return AlertDialog(
          content: Container(
            child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Container(
                  width: double.infinity,
                  height: 600,
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        FormRowCadastro(
                          'Nome',
                          [
                            FormFieldCadastro(false, nome),
                            FormFieldCadastro(false, sobrenome),
                          ],
                        ),
                        FormRowCadastro(
                          'E-mail',
                          [
                            FormFieldCadastro(false, email),
                          ],
                        ),
                        FormRowCadastro(
                          'Senha',
                          [
                            FormFieldCadastro(true, senha),
                          ],
                        ),
                        FormRowCadastro(
                          'Confirmar Senha',
                          [
                            FormFieldCadastro(true, repetirsenha),
                          ],
                        ),
                        FormRowCadastro(
                          'Data de Nascimento',
                          [
                            FormFieldCadastro(false, dia),
                            FormFieldCadastro(false, mes),
                            FormFieldCadastro(false, ano),
                          ],
                        ),
                        FormRowCadastro(
                          'Celular',
                          [
                            Expanded(
                              flex: 2,
                              child: Center(
                                child: Icon(
                                    LineAwesomeIcons
                                        .united_states_of_america_flag,
                                    size: 40,
                                    color: red),
                              ),
                            ),
                            Expanded(
                              flex: 3,
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    bottom: 20.0,
                                    top: 8.0,
                                    right: 10.0,
                                    left: 10.0),
                                child: Container(
                                    width: 150,
                                    height: 40,
                                    decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(40),
                                        color: fonteCadasto2),
                                    child: Padding(
                                      padding: const EdgeInsets.all(12.0),
                                      child: TextFormField(
                                          controller: ddd,
                                          style: TextStyle(),
                                          decoration: InputDecoration(
                                            border: InputBorder.none,
                                          )),
                                    )),
                              ),
                            ),
                            FormFieldCadastro(false, celular),
                          ],
                        ),
                        Center(
                          child: Padding(
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
                                      'Cadastrar',
                                      style: TextStyle(color: white),
                                    ),
                                  ),
                                ),
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => LoginPage(),
                                    ),
                                  );
                                },
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )),
          ),
        );
      },
    );
  }
}
