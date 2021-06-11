import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/Widgets/bottom_appbar.dart';
import 'package:mdb_flutter/src/pages/Compra.dart';
import 'package:mdb_flutter/src/pages/HomePage.dart';
import 'package:mdb_flutter/src/pages/ListaCompras.dart';

class PerfilUsuario extends StatefulWidget {
  @override
  createState() {
    return _PerfilUsuarioState();
  }
}

class _PerfilUsuarioState extends State<PerfilUsuario> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: _crearAppBar(),
        body: Column(
          children: <Widget>[
            ListTile(title: Text('Compras'), tileColor: Colors.blue[100]),
            ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Ver Carrito'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => Compra(),
                  ));
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.receipt),
              title: Text('Ver Compras anteriores'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ListaCompras(),
                  ));
                },
              ),
            ),
            ListTile(title: Text('General'), tileColor: Colors.blue[100]),
            ListTile(
              leading: Icon(Icons.payment),
              title: Text('Metodo de Pago'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  // TODO metodo de pago
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.place),
              title: Text('Ubicacion'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  // TODO ubicacion
                },
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationbar(),
      ),
    );
  }

  _crearAppBar() {
    return PreferredSize(
        child: SafeArea(
          top: true,
          child: ListTile(
            tileColor: Colors.blue,
            leading: CircleAvatar(
              backgroundImage: AssetImage('./assets/imagen.jpg'),
            ),
            title: Text('Nombre de usuario'),
            trailing: IconButton(
              icon: Icon(Icons.exit_to_app),
              onPressed: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => HomePage(),
                ));
              },
            ),
          ),
        ),
        preferredSize: Size.fromHeight(70));
  }
}
