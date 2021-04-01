import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  @override
  _FavoriteButtonState createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isFavorite ? Icons.favorite : Icons.favorite_border,
          size: 25,
          color: Colors.brown[200]),
      onPressed:(){
        setState(() {
          isFavorite = ! isFavorite;
        });
      },
    );
  }
}
