import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pet_hub/views/breeds/breeds_view.dart';
import 'package:pet_hub/views/pets/models/pet.dart';

class ImageCard extends StatelessWidget {
  final Pet pet;

  ImageCard({Key key, this.pet}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(5.0),
      child: InkWell(
        onTap: () {
          if (this.pet.breeds.length != 0) {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => BreedsView(
                  breed: this.pet.breeds[0],
                  imageUrl: this.pet.url,
                ),
              ),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('This pet has no breeds available'),
              ),
            );
          }
        },
        child: CachedNetworkImage(
          imageUrl: this.pet.url,
          imageBuilder: (context, imageProvider) => Container(
            width: 100.0,
            height: 100.0,
            decoration: BoxDecoration(
              color: Color(0xff7c94b6),
              image: DecorationImage(
                image: imageProvider,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10.0),
              ),
            ),
          ),
          placeholder: (context, url) => Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => Icon(
            Icons.error,
          ),
        ),
      ),
    );
  }
}
