import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/pages/LoginPage.dart';

class RegistroProveedor extends StatefulWidget {
  @override
  createState() {
    return _RegistroProveedorState();
  }
}

class _RegistroProveedorState extends State<RegistroProveedor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Registro de proveedor"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Bienvenido',
                style: TextStyle(fontSize: 65),
              ),
              Container(
                child: TextFormField(
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    labelText: 'Nombre de usuario',
                    labelStyle: TextStyle(
                      color: Color(0xFF6200EE),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6200EE)),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 16),
                width: 328,
              ),
              Container(
                child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    labelText: 'Correo electronico',
                    labelStyle: TextStyle(
                      color: Color(0xFF6200EE),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6200EE)),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 16),
                width: 328,
              ),
              Container(
                child: TextFormField(
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color(0xFF6200EE),
                    ),
                    suffixIcon: Icon(Icons.visibility
                        // Icons.visibility_off
                        ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6200EE)),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 16),
                width: 328,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => LoginPage(),
                    ));
                  },
                  child: Text('REGISTRARSE'),
                  style: ButtonStyle(),
                ),
                margin: EdgeInsets.only(top: 100),
              ),
              Divider(color: Colors.black),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    // TO DO registro con facebook
                  },
                  child: Column(children: [
                    // Icon(Icons.face),
                    Text('REGISTRARSE CON FACEBOOK'),
                  ]),
                  style: ElevatedButton.styleFrom(primary: Colors.blue[900]),
                ),
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () {
                      // TO DO registro con gmail
                    },
                    child: Text('REGISTRARSE CON GMAIL'),
                    style: ElevatedButton.styleFrom(primary: Colors.red)),
                margin: EdgeInsets.only(top: 5),
              ),
            ],
          ),
        ));
  }
}
