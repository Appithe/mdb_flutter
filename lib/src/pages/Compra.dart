import 'package:flutter/material.dart';

class Compra extends StatefulWidget {
  @override
  createState() {
    return _CompraState();
  }
}

class _CompraState extends State<Compra> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tu carro de compra"),
      ),
      body: ListView(
        children: <Widget>[
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
          item(),
        ],
      ),
      bottomNavigationBar: Container(
        height: 125,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              offset: Offset(0, -15), blurRadius: 20, color: Colors.black26)
        ]),
        child: Container(
            child: Column(children: [
              Row(
                children: [Text('Total estimado'), Spacer(), Text('\$0000.00')],
              ),
              ElevatedButton(
                onPressed: () {
                  print('Compra realizada');
                },
                child: Text('COMPRAR'),
              )
            ]),
            margin: EdgeInsets.all(20)),
      ),
    );
  }
}

Widget item() {
  final card = Container(
      child: Column(
    children: <Widget>[
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: <Widget>[
              Image(
                image: AssetImage('assets/imagen.jpg'),
                height: 150,
                width: 150,
              ),
            ],
          ),
          Column(
            children: <Widget>[Text('  Producto/Servicio')],
          ),
          Column(
            children: <Widget>[
              Text('\$ 0000.00'),
              TextButton(
                onPressed: () {
                  print('Producto/Servicio elimindo');
                },
                child: Text(
                  "Eliminar",
                  style: TextStyle(color: Colors.red[400]),
                ),
              )
            ],
          ),
        ],
      )
    ],
  ));

  return Container(
    child: ClipRRect(
      borderRadius: BorderRadius.circular(20.0),
      child: card,
    ),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(5.0),
      boxShadow: <BoxShadow>[
        BoxShadow(
            color: Colors.black26,
            blurRadius: 10,
            spreadRadius: 2,
            offset: Offset(2.0, 10.0))
      ],
      color: Colors.white,
    ),
    margin: EdgeInsets.only(left: 5.0, right: 5.0, top: 5.0),
  );
}
