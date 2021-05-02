import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_hub/views/breeds/breeds_view.dart';
import 'package:pet_hub/views/pets/pets_view.dart';

void main() {
  runApp(PetHubApp());
}

class PetHubApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      child: MaterialApp(
        title: 'Pet Hub',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PetsView(),
        routes: {
          '/pets': (context) => PetsView(),
          '/pets/:id': (context) => BreedsView(),
        },
      ),
    );
  }
}
