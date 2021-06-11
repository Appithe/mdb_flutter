import 'package:flutter/material.dart';

class ReciboProducto extends StatefulWidget {
  @override
  createState() {
    return _ReciboProductoState();
  }
}

class _ReciboProductoState extends State<ReciboProducto> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Recibo"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              backgroundImage: AssetImage('assets/imagen.jpg'),
              radius: 125,
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              child: Column(
                children: <Widget>[
                  Text(
                    'Nombre del item',
                    style: TextStyle(fontSize: 34),
                  ),
                  Text(
                    'Fecha de pedido: DD/MM/AA',
                    style: TextStyle(fontSize: 14),
                  ),
                ],
              ),
            ),
            _crearCardDescripcion(),
          ],
        ),
      ),
    );
  }

  Widget _crearCardDescripcion() {
    return Card(
      child: Container(
        height: 240,
        width: 350,
        padding: EdgeInsets.symmetric(horizontal: 19, vertical: 19),
        child: Stack(
          children: <Widget>[
            Container(
              child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Parturient amet mollis viverra justo, quis.',
                style: TextStyle(fontSize: 16),
              ),
            ),
            Positioned(
                child: Text(
                  '\$0000.00',
                  style: TextStyle(fontSize: 20),
                ),
                right: 10,
                bottom: 10)
          ],
        ),
      ),
    );
  }
}
