import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:myapp/Cadastro/form.dart';
import 'package:myapp/Home/homePage.dart';
import 'package:myapp/Login/formLogin.dart';
import 'package:myapp/helper.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passController = TextEditingController();
  CadastroForm cadastroForm = CadastroForm();
  @override
  Widget build(BuildContext context) {
    var _checkbox = false;
    var _checkbox1 = false;
    return Scaffold(
        body: Center(
            child: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [cor1, cor2.withOpacity(0.63)])),
      child: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 80),
        child: Container(
          child: Row(
            children: [
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      color: mainColor,
                      image: DecorationImage(
                        alignment: Alignment.center,
                        matchTextDirection: true,
                        image: AssetImage("assets/loginImage.png"),
                      )),
                ),
              ),
              Expanded(
                child: Container(
                  color: preenchimento,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        height: 24,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Icon(
                          LineAwesomeIcons.user_circle_1,
                          size: 160,
                          color: fonteCadasto2,
                        ),
                      ),
                      FormLogin(userController, false, LineAwesomeIcons.user),
                      FormLogin(passController, true, LineAwesomeIcons.lock),
                      Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Row(
                              children: [
                                Checkbox(
                                  value: _checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkbox = true;
                                    });
                                  },
                                ),
                                Text('Lembre-me'),
                              ],
                            ),
                            Row(
                              children: [
                                Checkbox(
                                  value: _checkbox,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkbox1 = true;
                                    });
                                  },
                                ),
                                Text('Esqueci minha senha'),
                              ],
                            ),
                          ],
                        ),
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
                                  'Entrar',
                                  style: TextStyle(color: white),
                                ),
                              ),
                            ),
                            onTap: () async {
                              if (userController.text.isEmpty ||
                                  passController.text.isEmpty) {
                                final snackBar = SnackBar(
                                  content: Text('Preencha todos os campos!'),
                                  action: SnackBarAction(
                                    label: 'Undo',
                                    onPressed: () {},
                                  ),
                                );

                                Scaffold.of(context).showSnackBar(snackBar);
                              } else {
                                await localStorage.put(
                                    'nome', userController.text);
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomePage(),
                                  ),
                                );
                              }
                            },
                          ),
                        ),
                      ),
                      FlatButton(
                        child: Text("Cadastre-se",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: grey.withOpacity(0.9))),
                        onPressed: () {
                          cadastroForm.cadastro(context);
                        },
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      )),
    )));
  }
}
