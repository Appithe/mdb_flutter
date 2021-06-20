import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mdb_flutter/src/pages/HomePage.dart';
import 'package:mdb_flutter/src/routes/routes.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  final Future<FirebaseApp> _fbApp = Firebase.initializeApp();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: getAplicationRoutes(),
      onGenerateRoute: (RouteSettings settings) {
        print('Ruta : ${settings.name}');
        return MaterialPageRoute(builder: (BuildContext context) => HomePage());
      },
      home: FutureBuilder(
        future: _fbApp,
        builder: (context, snapshot) {
          if (snapshot.hasError) {
            print('Tienes un error! ${snapshot.error.toString()}');
            return Text('Algo salio mal!');
          } else if (snapshot.hasData) {
            return HomePage(
                //Esto se tiene que cambiar a la pag principal que usamos
                );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}
