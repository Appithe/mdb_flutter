import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/pages/Catalogo.dart';
import 'package:mdb_flutter/src/pages/Compra.dart';
import 'package:mdb_flutter/src/pages/Detalle.dart';
import 'package:mdb_flutter/src/pages/HomePage.dart';
import 'package:mdb_flutter/src/pages/ListaCompras.dart';
import 'package:mdb_flutter/src/pages/LoginPage.dart';
import 'package:mdb_flutter/src/pages/PerfilUsuario.dart';
import 'package:mdb_flutter/src/pages/ReciboProducto.dart';
import 'package:mdb_flutter/src/pages/RegistroProducto.dart';
import 'package:mdb_flutter/src/pages/RegistroProveedor.dart';
import 'package:mdb_flutter/src/pages/RegistroServicio.dart';
import 'package:mdb_flutter/src/pages/ResgistroUsuario.dart';
import 'package:mdb_flutter/src/pages/SelectUser.dart';
import 'package:mdb_flutter/src/pages/SolicitudesProductoServicio.dart';

Map<String, WidgetBuilder> getAplicationRoutes() {
  return <String, WidgetBuilder>{
    '/': (BuildContext context) => HomePage(),
    'selectUser': (BuildContext context) => SelectUser(),
    'login': (BuildContext context) => LoginPage(),
    'registroUsuario': (BuildContext context) => RegistroUsuario(),
    'registroProveedor': (BuildContext context) => RegistroProveedor(),
    'registroProducto': (BuildContext context) => RegistroProducto(),
    'registroServicio': (BuildContext context) => RegistroServicio(),
    'perfilUsuario': (BuildContext context) => PerfilUsuario(),
    'reciboProducto': (BuildContext context) => ReciboProducto(),
    'compra': (BuildContext context) => Compra(),
    'solicitudesProductoServicio': (BuildContext context) =>
        SolicitudesProductoServicio(),
    'detalle': (BuildContext context) => Detalle(),
    'catalogoProductos': (BuildContext context) => Catalogo(),
    'listaCompras': (BuildContext context) => ListaCompras(),
  };
}
