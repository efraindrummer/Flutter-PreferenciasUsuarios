import 'package:flutter/material.dart';
import 'package:preferenciasusuarioapp/src/widgets/menu_widget.dart';
import 'package:preferenciasusuarioapp/src/share_prefs/preferencias_usuario.dart';

class HomePage extends StatelessWidget {

  static final String routeName = 'home';
  final prefs = new PreferenciasUsuario();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text('Preferecias de Usuario'),
        backgroundColor: (prefs.colorSecundario) ? Colors.teal : Colors.blue,
      ),
      drawer: MenuWidget(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text('Color secundario: ${prefs.colorSecundario}'),
          Divider(),
          Text('Genero ${prefs.genero}'),
          Divider(),
          Text('Nombre de usuario: ${prefs.nombreUsuario}'),
          Divider(),
        ],
      )
    );
  }
}