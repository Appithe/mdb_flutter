import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/Widgets/horizontal_list.dart';

class ProductosTab extends StatefulWidget {
  ProductosTab({Key key}) : super(key: key);

  @override
  _ProductosTabState createState() => _ProductosTabState();
}

class _ProductosTabState extends State<ProductosTab> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        children: <Widget>[
          _crearCategoria('limpieza'),
          _crearCategoria('Casa'),
          _crearCategoria('Moda'),
          _crearCategoria('Joyeria'),
        ],
      ),
    );
  }
}

Widget _crearCategoria(String categoria) {
  return Column(
    children: <Widget>[
      Padding(
        padding: EdgeInsets.symmetric(vertical: 10),
        child: Text(
          categoria,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
        ),
      ),
      MyList(),
    ],
  );
}
