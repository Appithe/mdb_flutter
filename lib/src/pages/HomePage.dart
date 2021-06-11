import 'package:flutter/material.dart';

import 'package:mercadito_de_bolsillo_flutter/src/pages/LoginPage.dart';
import 'package:mercadito_de_bolsillo_flutter/src/pages/SelectUser.dart';

class HomePage extends StatefulWidget {
  @override
  createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
            child: Text(
              'Mercadito de bolsillo',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 34,
              ),
            ),
            margin: EdgeInsets.all(56.0),
          ),
          Container(
            child: CircleAvatar(
              backgroundImage: AssetImage('assets/imagen.jpg'),
              radius: 81.5,
            ),
            margin: EdgeInsets.only(bottom: 102),
          ),
          Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => LoginPage(),
                ));
              },
              child: Text('INICIO DE SESION'),
              style: ButtonStyle(),
            ),
            margin: EdgeInsets.only(bottom: 20),
          ),
          Container(
            child: OutlinedButton(
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => SelectUser(),
                ));
              },
              child: Text("CREAR CUENTA"),
            ),
          )
        ],
      ),
    ));
  }
}
