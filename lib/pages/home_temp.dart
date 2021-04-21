import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final opciones = [
    'Bienvenido a opcion1',
    'Bienvenido a opcion2',
    'Bienvenido a opcion3',
    'Bienvenido a opcion4',
    'Bienvenido a opcion5',
    'Bienvenido a opcion6'
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Componente Temporal'),
      ),
      body: ListView(children: _crearWidgets(context)),
    );
  }

  List<Widget> _crearWidgets(BuildContext context) {
    List<Widget> lista =  <Widget>[];
    for (String opt in opciones) {
      final tempWidget = ListTile(
        title: Text(opt),
        subtitle: Text('Subtitulo de la '+opt),
        leading: Icon(Icons.account_box_rounded),
        trailing: Icon(Icons.keyboard_arrow_right_outlined),
        onTap: (){
          _Renglon(opt, context);
        },
      );
     // lista..add(tempWidget)..add(Divider());

      lista.add(tempWidget);
      lista.add(Divider());
    }
    return lista;
  }
 void _Renglon(String opcion, BuildContext context) {
    final snackBar = SnackBar(content: Text(opcion));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}


