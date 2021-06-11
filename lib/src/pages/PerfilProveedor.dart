import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/Widgets/bottom_appbar.dart';
import 'package:mdb_flutter/src/pages/HomePage.dart';
import 'package:mdb_flutter/src/pages/RegistroProducto.dart';
import 'package:mdb_flutter/src/pages/RegistroServicio.dart';
import 'package:mdb_flutter/src/pages/SolicitudesProductoServicio.dart';

class PerfilProveedor extends StatefulWidget {
  PerfilProveedor({Key key}) : super(key: key);

  @override
  _PerfilProveedorState createState() => _PerfilProveedorState();
}

class _PerfilProveedorState extends State<PerfilProveedor> {
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
              title: Text('Ver Pedidos'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => SolicitudesProductoServicio(),
                  ));
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.devices_other),
              title: Text('Agregar producto'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistroProducto(),
                  ));
                },
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.room_service),
              title: Text('Agregar servicio'),
              trailing: IconButton(
                icon: Icon(Icons.arrow_forward_ios),
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => RegistroServicio(),
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
            title: Text('Nombre de proveedor'),
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
        preferredSize: Size.fromHeight(100));
  }
}
