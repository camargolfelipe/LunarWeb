import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:myapp/Login/login.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('LocalStorage');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Portal",
      debugShowCheckedModeBanner: false,
      locale: Locale('pt', 'BR'),
      home: LoginPage(),
      // home: PageInicial(),
    );
  }
}
