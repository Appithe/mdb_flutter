import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/pages/Catalogo.dart';
import 'package:mdb_flutter/src/pages/SelectUser.dart';

class LoginPage extends StatefulWidget {
  @override
  createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Inicio de sesion'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
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
                  cursorColor: Theme.of(context).cursorColor,
                  decoration: InputDecoration(
                    labelText: 'Contraseña',
                    labelStyle: TextStyle(
                      color: Color(0xFF6200EE),
                    ),
                    suffixIcon: Icon(
                      Icons.remove_red_eye,
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Color(0xFF6200EE)),
                    ),
                  ),
                ),
                margin: EdgeInsets.only(bottom: 98),
                width: 328,
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(
                      builder: (context) => Catalogo(),
                    ));
                  },
                  child: Text('INICIAR SESION'),
                  style: ButtonStyle(),
                ),
                margin: EdgeInsets.only(bottom: 11),
              ),
              Divider(
                height: 1,
                indent: 20,
                endIndent: 20,
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('Nuevo Usuario?  '),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => SelectUser(),
                        ));
                      },
                      child: Text("Crear una cuenta"),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
