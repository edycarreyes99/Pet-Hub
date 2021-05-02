import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// ignore: deprecated_member_use
import 'package:flutter_riverpod/all.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:pet_hub/global/consts/urls.dart';
import 'package:pet_hub/views/pets/states/pets_view_state.dart';
import 'package:pet_hub/views/pets/widgets/image_card.dart';

class PetsView extends ConsumerWidget {
  PetsView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context, ScopedReader watch) {
    var petsProvider = watch(petsStateFuture(AppURLs.API_DOG_URL)).data;

    return Scaffold(
      appBar: AppBar(
        title: Text('Pets'),
      ),
      body: petsProvider != null
          ? petsProvider.when(
              data: (pets) => RefreshIndicator(
                onRefresh: () async {
                  return context.refresh(petsStateFuture(AppURLs.API_DOG_URL));
                },
                child: StaggeredGridView.countBuilder(
                  itemCount: pets.length,
                  crossAxisCount: 4,
                  mainAxisSpacing: 0,
                  crossAxisSpacing: 0,
                  itemBuilder: (BuildContext context, int index) {
                    return ImageCard(
                      pet: pets[index],
                    );
                  },
                  staggeredTileBuilder: (int index) {
                    return new StaggeredTile.count(2, index.isEven ? 2 : 1);
                  },
                ),
              ),
              loading: () => Center(
                child: CircularProgressIndicator(),
              ),
              error: (error, stack) => Center(
                child: Text('No data: ${error.toString()}'),
              ),
            )
          : Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
