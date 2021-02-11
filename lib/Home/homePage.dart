import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:myapp/Home/circulo.dart';
import 'package:myapp/Home/dialogInicio.dart';
import 'package:myapp/Home/lojas.dart';
import 'package:myapp/Home/textMenu.dart';
import 'package:myapp/helper.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  DialogInicio dialogInicio = DialogInicio();
  List list = [
    'assets/manequin/1.png',
    'assets/manequin/2.png',
    'assets/manequin/3.png',
    'assets/manequin/4.png',
    'assets/manequin/5.png',
    'assets/manequin/6.png',
  ];
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) async {
      await dialogInicio.inicio(context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            alignment: Alignment.bottomCenter,
            width: double.infinity,
            height: 160,
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [cor1, cor2.withOpacity(0.63)])),
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/lunar.png'),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Expanded(
                    flex: 9,
                    child: Container(
                      alignment: Alignment.bottomCenter,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Expanded(
                              child: Container(
                            decoration: BoxDecoration(
                                color: white,
                                borderRadius: BorderRadius.circular(80.0)),
                            width: 350,
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              child: Row(
                                children: [
                                  Icon(
                                    LineAwesomeIcons.search,
                                    color: grey,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 8.0),
                                    child: Text(
                                      'Pesquisar...',
                                      style: TextStyle(color: grey),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          )),
                          Expanded(
                            child: Row(
                              children: [
                                TextMenu('Novidades'),
                                TextMenu('Vestidos'),
                                TextMenu('Salas'),
                                TextMenu('Camisetas'),
                                TextMenu('Coletes'),
                                TextMenu('Calças'),
                                TextMenu('Acessórios'),
                                Icon(LineAwesomeIcons.user, color: white)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        Lojas(Image.asset(
                          'assets/loja/android.png',
                          width: 150,
                        )),
                        Lojas(Image.asset(
                          'assets/loja/apple.png',
                          width: 150,
                        ))
                      ],
                    ))
              ],
            ),
          ),
          Container(
            width: double.infinity,
            child: Image.asset('assets/loja/PromocaoRelampago.png'),
          ),
          Divider(),
          Padding(
            padding: const EdgeInsets.all(24.0),
            child: GridView.builder(
                shrinkWrap: true,
                itemCount: list.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3),
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.only(left: 32.0, right: 32.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Card(
                          child: Container(
                            height: 250,
                            width: 350,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage(list[index]),
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Expanded(
                                child: Text(
                                  'RS:49,90',
                                  style: TextStyle(fontSize: 24.0),
                                ),
                              ),
                              Expanded(
                                child: Text(''),
                              ),
                              Expanded(
                                child: Row(
                                  children: [
                                    Circulo(blue),
                                    Circulo(red),
                                    Circulo(black)
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
