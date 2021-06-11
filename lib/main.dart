import 'package:flutter/material.dart';

import 'package:mercadito_de_bolsillo_flutter/src/pages/HomePage.dart';
import 'package:mercadito_de_bolsillo_flutter/src/routes/routes.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta : ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
    );
  }
}
