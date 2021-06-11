import 'package:flutter/material.dart';
import 'package:mercadito_de_bolsillo_flutter/src/pages/Compra.dart';

class Detalle extends StatefulWidget {
  @override
  createState() {
    return _DetalleState();
  }
}

class _DetalleState extends State<Detalle> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detalle"),
      ),
      body: Column(
        children: <Widget>[
          Image(image: AssetImage('assets/imagen.jpg')),
          Container(
            child: Text(
              'Nombre del producto/servicio',
              style: TextStyle(
                  fontSize: 20,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.bold),
            ),
            margin: EdgeInsets.only(
              top: 7,
            ),
          ),
          Container(
            child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit ut aliquam, purus sit amet luctus venenatis, lectus magna fringilla urna, porttitor',
              textAlign: TextAlign.left,
            ),
            width: 316,
            margin: EdgeInsets.only(left: 42),
          ),
          Container(
            child: Row(
              children: [
                Text(
                  '\$ 0000.00',
                  style: TextStyle(fontSize: 20),
                ),
                Container(
                  child: Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 24,
                      ),
                      Icon(
                        Icons.star,
                        size: 24,
                      ),
                      Icon(
                        Icons.star_half,
                        size: 24,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 24,
                      ),
                      Icon(
                        Icons.star_border,
                        size: 24,
                      ),
                    ],
                  ),
                  margin: EdgeInsets.only(left: 100),
                )
              ],
            ),
            margin: EdgeInsets.only(top: 20, left: 38),
          ),
          infoProv(),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => Compra(),
                      ));
                    },
                    child: Text('COMPRAR'),
                  ),
                  margin: EdgeInsets.only(left: 22),
                ),
                Container(
                  child: ElevatedButton.icon(
                    onPressed: () {
                      print('Agregado');
                    },
                    icon: Icon(Icons.add, size: 18),
                    label: Text("AGREAGAR AL CARRITO"),
                  ),
                  margin: EdgeInsets.only(left: 20),
                ),
              ],
            ),
          ),
          comentarios(),
          comentario()
        ],
      ),
    );
  }
}

Widget infoProv() {
  final info = Column(
    children: [
      Container(
        child: Text(
          'Informacion del proveedor',
          style: TextStyle(fontSize: 16),
        ),
        margin: EdgeInsets.only(bottom: 10, top: 18),
      ),
      Container(
        child: Text(
          'Nombre del proveedor',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        margin: EdgeInsets.only(bottom: 5),
      ),
      Container(
        child: Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor.'),
      )
    ],
  );

  return Container(
    child: info,
    width: 290,
    height: 112,
  );
}

Widget comentarios() {
  return Column(
    children: [
      Container(
        child: Row(
          children: [
            Text(
              'Comentarios',
              style: TextStyle(fontSize: 16),
            ),
            Container(
                child: TextButton(
                  onPressed: () {
                    // Respond to button press
                  },
                  child: Text("Agregar comentario"),
                ),
                margin: EdgeInsets.only(left: 80))
          ],
        ),
        margin: EdgeInsets.only(left: 26, top: 18),
      ),
    ],
  );
}

Widget comentario() {
  return Card(
    child: Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: AssetImage('assets/imagen.jpg'),
            radius: 30,
          ),
          title: Row(
            children: [
              Text('Autor'),
              Container(
                child: Text(
                  'DD/MM/AA',
                  style: TextStyle(fontSize: 12),
                ),
                margin: EdgeInsets.only(left: 120),
              )
            ],
          ),
          subtitle: Text(
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry'),
        ),
        Divider(
          color: Colors.white,
        )
      ],
    ),
  );
}
