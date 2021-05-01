import 'package:flutter/material.dart';
import 'package:pet_hub/views/pets/pets_view.dart';

void main() {
  runApp(PetHubApp());
}

class PetHubApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pet Hub',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PetsView(),
    );
  }
}
