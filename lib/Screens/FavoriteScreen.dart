import 'package:flutter/material.dart';
import 'package:gsg_aziz2/model/brain.dart';

import 'ProductCard.dart';

class FavouriteScreen extends StatefulWidget {
  List<ProductBrain> fav;
  FavouriteScreen({this.fav});
  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: widget.fav.length,
      itemBuilder: (context, index) {
        if (widget.fav[index].isFav) {
          return ProductCard(
            product: widget.fav[index],
          );
        }
      },
    );
  }
}
