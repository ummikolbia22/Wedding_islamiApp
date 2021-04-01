import 'package:flutter/material.dart';

class HeaderContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ClipPath(
          clipper: BackgroundClip(),
          child: Container(
            height: 300.0,
            width: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors: [
                  Colors.pink[200],
                  Colors.pinkAccent[700]
                ],
              ),
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.only(top: 100),
          child: Row(
            children: <Widget>[
              Container(
                  child: Image(image: AssetImage('assets/images/c.png'), width: 100.0)
              ),
              Center(
                child: Container(
                  child: Column(
                    children: <Widget>[
                      Text('Married in Islam',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white)),
                      Text('QS. Adz Dzariyat: 49',
                        style: TextStyle(
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                  child: Image(image: AssetImage('assets/images/c.png'), width: 100.0)
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class BackgroundClip extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path =Path();
    path.lineTo(0, size.height -80);
    path.quadraticBezierTo(size.width/2, size.height, size.width, size.height -80);
    path.lineTo(size.width, 2);
    path.close();
    return path;

  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
