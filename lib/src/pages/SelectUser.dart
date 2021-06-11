import 'package:flutter/material.dart';

import 'package:mdb_flutter/src/pages/RegistroProveedor.dart';
import 'package:mdb_flutter/src/pages/ResgistroUsuario.dart';

class SelectUser extends StatefulWidget {
  @override
  createState() {
    return _SelectUserState();
  }
}

class _SelectUserState extends State<SelectUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tipo de usuario'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              child: Text(
                'Que tipo de usuario eres?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
              margin: EdgeInsets.only(top: 54),
            ),
            Container(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/imagen.jpg'),
                radius: 81.5,
              ),
              margin: EdgeInsets.only(top: 54, bottom: 102),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistroProveedor(),
                  ));
                },
                child: Text('REGISTRO DE PROVEEDOR'),
                style: ButtonStyle(),
              ),
              margin: EdgeInsets.only(bottom: 20),
            ),
            Container(
              child: ElevatedButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistroUsuario(),
                  ));
                },
                child: Text('REGISTRO DE CLIENTE'),
                style: ButtonStyle(),
              ),
              margin: EdgeInsets.only(bottom: 20),
            )
          ],
        ),
      ),
    );
  }
}
