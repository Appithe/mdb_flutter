import 'package:flutter/material.dart';

class RegistroProducto extends StatefulWidget {
  @override
  createState() {
    return _RegistroProductoState();
  }
}

class _RegistroProductoState extends State<RegistroProducto> {
  String _nombre = '';
  String _descripcion = '';
  String _precio = '';

  List<String> _categoria = [
    'Selecciona una categoria',
    'Limpieza',
    'Casa',
    'Moda',
    'Joyeria',
  ];

  String _opcionPreselect = 'Selecciona una categoria';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agregar producto"),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Center(
            child: Image(
              image: AssetImage('assets/imagen.jpg'),
              width: 300,
              height: 200,
            ),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(top: 26, bottom: 16),
            child: _crearInputNombre(),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(bottom: 16),
            child: _crearInputDescripcion(),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(bottom: 16),
            child: _crearInputPrecio(),
          ),
          Container(
            width: 300,
            margin: EdgeInsets.only(bottom: 16),
            child: _crearListaCategoria(),
          ),
          FloatingActionButton(
            onPressed: () => _mostrarAlerta(context),
            child: Icon(Icons.add),
          )
        ],
      ),
    );
  }

  Widget _crearInputNombre() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: 'Nombre del Producto',
        labelText: 'Nombre del Producto',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (value) {
        setState(() {
          _nombre = value;
        });
      },
    );
  }

  Widget _crearInputDescripcion() {
    return TextField(
      textCapitalization: TextCapitalization.words,
      decoration: InputDecoration(
        hintText: 'Descripcion del Producto',
        labelText: 'Descripcion del Producto',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (value) {
        setState(() {
          _descripcion = value;
        });
      },
    );
  }

  Widget _crearInputPrecio() {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
        hintText: 'Precio',
        labelText: 'Precio',
        border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      ),
      onChanged: (value) {
        setState(() {
          _precio = value;
        });
      },
    );
  }

  List<DropdownMenuItem<String>> getOpciones() {
    List<DropdownMenuItem<String>> lista = new List();
    _categoria.forEach((categoria) {
      lista.add(DropdownMenuItem(
        value: categoria,
        child: Text(categoria),
      ));
    });
    return lista;
  }

  Widget _crearListaCategoria() {
    return Row(
      children: <Widget>[
        Expanded(
          child: DropdownButton(
            value: _opcionPreselect,
            items: getOpciones(),
            onChanged: (opt) {
              setState(() {
                _opcionPreselect = opt;
              });
            },
          ),
        )
      ],
    );
  }

  _mostrarAlerta(BuildContext context) {
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context) {
        return AlertDialog(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          title: Text('Producto agregado'),
          content: Text('Descripcion'),
          actions: <Widget>[
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Ok')),
            TextButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text('Cancel')),
          ],
        );
      },
    );
  }
}
