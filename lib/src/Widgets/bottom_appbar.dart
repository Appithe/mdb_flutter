import 'package:flutter/material.dart';
import 'package:mercadito_de_bolsillo_flutter/src/pages/Catalogo.dart';
import 'package:mercadito_de_bolsillo_flutter/src/pages/PerfilProveedor.dart';
import 'package:mercadito_de_bolsillo_flutter/src/pages/PerfilUsuario.dart';

class BottomNavigationbar extends StatelessWidget {
  const BottomNavigationbar();

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blue,
      child: IconTheme(
        data: IconThemeData(color: Theme.of(context).colorScheme.onPrimary),
        child: Row(
          children: <Widget>[
            IconButton(
              tooltip: 'Inicio',
              icon: const Icon(Icons.home),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => Catalogo(),
                ));
              },
            ),
            IconButton(
              tooltip: 'Perfil',
              icon: const Icon(Icons.account_circle),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => PerfilProveedor(),
                  // builder: (context) => PerfilUsuario(),
                ));
              },
            ),
          ],
        ),
      ),
    );
  }
}