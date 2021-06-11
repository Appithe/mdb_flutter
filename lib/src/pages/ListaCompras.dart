import 'package:flutter/material.dart';
import 'package:mercadito_de_bolsillo_flutter/src/pages/ReciboProducto.dart';

class ListaCompras extends StatefulWidget {
  @override
  createState() {
    return _ListaComprasState();
  }
}

class _ListaComprasState extends State<ListaCompras> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Lista de compras"),
      ),
      body: ListView(
        children: <Widget>[
          item(context, 'Item 1'),
          item(context, 'Item 2'),
          item(context, 'Item 3'),
        ],
      ),
    );
  }
}

Widget item(BuildContext context, String itemName) {
  return Card(
    child: Column(
      children: [
        ListTile(
          leading: Image(
            image: AssetImage('assets/imagen.jpg'),
          ),
          title: Text('${itemName}'),
          subtitle: Text(
            '\$0000.00',
            style: TextStyle(color: Colors.black.withOpacity(0.6)),
          ),
          trailing: Text('DD/MM/AA'),
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => ReciboProducto(),
            ));
          },
        ),
      ],
    ),
  );
}
