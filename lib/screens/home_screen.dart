import 'package:flutter/material.dart';
import 'package:prefereciasusuario/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static const routeName = 'home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        drawer: const SideMenu(),
        body: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Divider(),
            Text('isDarkMode:'),
            Divider(),
            Text('Genero:'),
            Divider(),
            Text('Nombre de usuario:'),
            Divider()
          ],
        ));
  }
}
