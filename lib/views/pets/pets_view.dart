import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PetsView extends StatefulWidget {
  PetsView({Key? key}) : super(key: key);

  @override
  _PetsViewState createState() => _PetsViewState();
}

class _PetsViewState extends State<PetsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pets'),
      ),
      body: Center(
        child: Text('Hola Mundo'),
      ),
    );
  }
}
