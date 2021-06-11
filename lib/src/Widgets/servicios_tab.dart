import 'package:flutter/material.dart';
import 'package:mercadito_de_bolsillo_flutter/src/Widgets/horizontal_list.dart';

class ServiciosTab extends StatefulWidget {
  ServiciosTab({Key key}) : super(key: key);

  @override
  _ServiciosTabState createState() => _ServiciosTabState();
}

class _ServiciosTabState extends State<ServiciosTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          _crearCategoria('Limpieza'),
          _crearCategoria('Hostes'),
          _crearCategoria('Eventos'),
        ],
      ),
    );
  }
}

Widget _crearCategoria(String categoria) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.all(20),
        child: Text(
          categoria,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      MyList(),
    ],
  );
}
