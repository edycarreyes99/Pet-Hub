import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pet_hub/global/network/rest_client.dart';
import 'package:pet_hub/views/pets/models/pet.dart';

final petsStateFuture =
    FutureProvider.family<List<Pet>, String>((ref, baseUrl) async {
  final client = RestClient(baseUrl: baseUrl);

  final pets = client.getPets(100);

  return pets;
});
