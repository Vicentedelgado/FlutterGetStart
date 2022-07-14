// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const SampleApp());
}

class SampleApp extends StatelessWidget {
  const SampleApp({Key? key}) : super(key: key);

  // Este widget es la raíz de tu aplicación.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Sample App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SampleAppPage(),
    );
  }
}

class SampleAppPage extends StatefulWidget {
  const SampleAppPage({Key? key}) : super(key: key);

  @override
  _SampleAppPageState createState() => _SampleAppPageState();
}

class _SampleAppPageState extends State<SampleAppPage> {
  // Texto placeholder predeterminado
  String textToShow = "Nombre Estudiante ";

  void _textAnnder() {
    setState(() {
      // update the text
      textToShow = "Anderson Córdova!";
    });
  }

  void _textVicente() {
    setState(() {
      // update the text
      textToShow = "Vicente Delgado!";
    });
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style =
        TextButton.styleFrom(primary: Theme.of(context).colorScheme.onPrimary);
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          TextButton(
            style: style,
            onPressed: () {
              _textAnnder();
            },
            child: const Text('Ander'),
          ),
          TextButton(
            style: style,
            onPressed: () {
              _textVicente();
            },
            child: const Text('Viche'),
          )
        ],
      ),
      body: Center(child: Text(textToShow)),
    );
  }
}
