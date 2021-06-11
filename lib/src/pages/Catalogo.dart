import 'package:flutter/material.dart';
import 'package:mercadito_de_bolsillo_flutter/src/Widgets/bottom_appbar.dart';
import 'package:mercadito_de_bolsillo_flutter/src/Widgets/productos_tab.dart';
import 'package:mercadito_de_bolsillo_flutter/src/Widgets/servicios_tab.dart';

class Catalogo extends StatefulWidget {
  @override
  createState() {
    return _CatalogoState();
  }
}

class _CatalogoState extends State<Catalogo> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Catalogo de Productos'),
          bottom: TabBar(
            indicatorColor: Colors.white,
            tabs: [
              Tab(text: 'Productos'),
              Tab(text: 'Servicios'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Center(child: ProductosTab()),
            Center(child: ServiciosTab()),
          ],
        ),
        bottomNavigationBar: BottomNavigationbar(),
      ),
    );
  }
}