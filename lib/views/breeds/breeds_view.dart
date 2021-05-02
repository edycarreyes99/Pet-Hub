import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/views/breeds/models/breed.dart';
import 'package:pet_hub/views/breeds/widgets/bred_info.dart';

class BreedsView extends StatelessWidget {
  final Breed breed;
  final String imageUrl;

  BreedsView({Key key, this.breed, this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 350.0,
            title: Text(
              breed.name,
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
              ),
            ),
            flexibleSpace: FlexibleSpaceBar(
              background: CachedNetworkImage(
                fit: BoxFit.fill,
                imageUrl: imageUrl,
                progressIndicatorBuilder: (context, url, downloadProgress) =>
                    Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => Icon(Icons.error),
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildListDelegate(
              [
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BredInfo(
                        icon: Icons.badge,
                        title: "Name",
                        subTitle: breed.name != null ? breed.name : 'N/A',
                      ),
                      BredInfo(
                        icon: Icons.pets,
                        title: "Bred for",
                        subTitle: breed.bredFor != null ? breed.bredFor : 'N/A',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BredInfo(
                        icon: Icons.timelapse,
                        title: "Life span",
                        subTitle:
                            breed.lifeSpan != null ? breed.lifeSpan : 'N/A',
                      ),
                      BredInfo(
                        icon: Icons.group_work,
                        title: "Breed Group",
                        subTitle: this.breed.breedGroup != null
                            ? this.breed.breedGroup
                            : 'N/A',
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BredInfo(
                        icon: Icons.expand,
                        title: "Height",
                        subTitle: breed.height != null
                            ? breed.height.metric != null
                                ? breed.height.metric
                                : 'N/A'
                            : 'N/A',
                      ),
                      BredInfo(
                        icon: Icons.fitness_center,
                        title: "Weight",
                        subTitle: breed.weight != null
                            ? breed.weight.metric != null
                                ? breed.weight.metric
                                : 'N/A'
                            : 'N/A',
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      BredInfo(
                        icon: Icons.whatshot,
                        title: "Temperament",
                        subTitle: breed.temperament != null
                            ? breed.temperament
                            : 'N/A',
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
