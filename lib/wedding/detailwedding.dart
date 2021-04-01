import 'package:flutter/material.dart';
import 'package:married/models/wedding.dart';

import '../favorite.dart';

class DetailWedding extends StatelessWidget {
  final Wedding wedding;

  const DetailWedding ({@required this.wedding});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Stack(
                children: <Widget>[
                  Image.asset(wedding.image),
                  SafeArea(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[

                        IconButton(
                          icon: Icon(Icons.arrow_back_rounded),
                          iconSize: 30.0,
                          onPressed: (){
                            Navigator.pop(context);
                          },
                        ),
                        FavoriteButton(),
                      ],
                    ),
                  ),
                ],
              ),

              Container(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  wedding.descrip,textAlign: TextAlign.justify,
                  style: TextStyle(fontSize: 16.0),
                ),
              ),
              Container(
                height: 160,
                child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: wedding.imgrul.map((url) {
                      return Padding(
                        padding: EdgeInsets.all(4.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.network(url),
                        ),
                      );
                    }).toList()
                ),
              )
            ]
        ),
      ),
    );
  }
}
