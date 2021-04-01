import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:married/contentakad/content_akad.dart';
import 'package:married/contentmarried/contentmarried.dart';
import 'package:married/contentnikah/contentnikah.dart';
import 'package:married/contentwedding/content%20wedding.dart';
import 'package:married/utils/custom_widget.dart';

class ContentMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children:<Widget> [
          Padding(
            padding: EdgeInsets.only(right: 18.0,left: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children:<Widget> [
                Text('Select Options',
                    style: styleTitle,
                    textAlign: TextAlign.left),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(8.0),
            height: 100.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children:<Widget> [
                Expanded(
                  flex: 6,
                  child: Card(
                    color: Colors.pinkAccent[100],
                    elevation: 3,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context,animation, animationTime,child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return ContentAkad();
                            }));
                      },
                      child: Row(
                        children:<Widget> [
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'sunnah',
                                    child: Image(image: AssetImage('assets/images/muslimah.png'),width: 80,
                                    )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'first sunnah',
                                    child: Image(image: AssetImage('assets/images/muslimah.png'),width: 80,
                                    )
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Marriage Prompt', style: cardTitle,),
                                  Container(
                                      margin: EdgeInsets.only(top: 8.0),
                                      child: Text('Guidelines for Marriage in Islam',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Card(
                    color: Colors.pinkAccent[100],
                    elevation: 3,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context,animation, animationTime,child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return ContentWedding();
                            }));
                      },
                      child: Row(
                        children:<Widget> [
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'cara',
                                    child: Image(image: AssetImage('assets/images/feeling.png'),width: 80,
                                    )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'first cara',
                                    child: Image(image: AssetImage('assets/images/feeling.png'),width: 80,
                                    )
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Between Married and Rich', style: cardTitle,),
                                  Container(
                                      margin: EdgeInsets.only(top: 8.0),
                                      child: Text('Madrosoh Sunnah',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Card(
                    color: Colors.pinkAccent[100],
                    elevation: 3,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context,animation, animationTime,child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return ContentMarried();
                            }));
                      },
                      child: Row(
                        children:<Widget> [
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'wajib',
                                    child: Image(image: AssetImage('assets/images/guys.png'),width: 80,
                                    )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'first wajib',
                                    child: Image(image: AssetImage('assets/images/guys.png'),width: 80,
                                    )
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Law Regarding Marriage', style: cardTitle,),
                                  Container(
                                      margin: EdgeInsets.only(top: 8.0),
                                      child: Text('Sunnah or Mandatory Marriage',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 6,
                  child: Card(
                    color: Colors.pinkAccent[100],
                    elevation: 3,
                    child: FlatButton(
                      onPressed: (){
                        Navigator.push(context, PageRouteBuilder(
                            transitionDuration: Duration(seconds: 2),
                            transitionsBuilder: (context,animation, animationTime,child){
                              animation = CurvedAnimation(parent: animation, curve: Curves.elasticInOut);
                              return ScaleTransition(
                                scale: animation,
                                alignment: Alignment.center,
                                child: child,
                              );
                            },
                            pageBuilder: (context,animation,animationTime){
                              return ContentNikah();
                            }));
                      },
                      child: Row(
                        children:<Widget> [
                          Stack(
                            children: <Widget>[
                              Padding(
                                padding:  EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'syarat',
                                    child: Image(image: AssetImage('assets/images/girl.png'),width: 80,
                                    )
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: 'first syarat',
                                    child: Image(image: AssetImage('assets/images/girl.png'),width: 80,
                                    )
                                ),
                              ),
                            ],
                          ),
                          Center(
                            child: Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text('Getting Rich by Getting Married', style: cardTitle,),
                                  Container(
                                      margin: EdgeInsets.only(top: 8.0),
                                      child: Text('Why should we get married',
                                          style: tagLine))
                                ],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                )


              ],
            ),
          )
        ],
      ),
    );
  }
}
