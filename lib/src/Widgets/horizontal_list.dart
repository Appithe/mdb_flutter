import 'package:flutter/material.dart';
import 'package:mdb_flutter/src/pages/Detalle.dart';

class MyList extends StatelessWidget {
  const MyList({Key key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        height: 250,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            MyListView(
              image: 'https://picsum.photos/id/1/200',
              description: 'lorem picsum 1',
            ),
            MyListView(
              image: 'https://picsum.photos/id/2/200',
              description: 'lorem picsum 2',
            ),
            MyListView(
              image: 'https://picsum.photos/id/3/200',
              description: 'lorem picsum 3',
            ),
            MyListView(
              image: 'https://picsum.photos/id/4/200',
              description: 'lorem picsum 4',
            ),
          ],
        ),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  final String image;
  final String description;

  MyListView({this.image, this.description});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Card(
        child: ListTile(
          onTap: () {
            Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => Detalle(),
            ));
          },
          title: Image(image: NetworkImage(image)),
          subtitle: Column(
            children: [
              Text(
                'Nombre Producto',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Text(description)
            ],
          ),
        ),
      ),
    );
  }
}
