import 'package:flutter/material.dart';
import 'package:married/models/wedding.dart';
import 'package:married/utils/custom_widget.dart';
import 'package:married/wedding/detailwedding.dart';

class ListWedding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                  margin: EdgeInsets.only(
                      left: 18.0, right: 18.0, bottom: 12.0, top: 6.0),
                  child: Text ('Latest News', style: styleTitle)),
            ],
          ),
          Container(
            height: 400,
            child : ListView(children: dataListWedding.map((place) {
              return FlatButton(
                onPressed: () {
                  //pindah halaman//
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return DetailWedding(wedding: place);
                  }));
                },
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Expanded(
                          flex: 1,
                          child: Image.asset(place.image)),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: <Widget>[
                                Text(place.title, style: TextStyle(fontSize: 16.0, fontWeight:  FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(place.descrip, maxLines: 3,)

                              ],
                            ),
                          )
                      )
                    ],
                  ),
                ),
              );
            }).toList()
            ),

          )

        ],
      ),

    );
  }
}
