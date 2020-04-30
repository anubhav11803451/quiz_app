import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LevelScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Difficuly Level",
          style: TextStyle(
            color: Colors.white70,
            fontFamily: "BalooBhaina2",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/1257738.jpg",
            height: 1000,
            fit: BoxFit.fill,
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  Container(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Easy',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Colors.white70,
//                          shadows: [
//                            Shadow(
//                              color: Colors.black54,
//                              blurRadius: 10.0,
//                              offset: Offset(5.0, 5.0),
//                            ),
//                            Shadow(
//                              color: Colors.black87,
//                              blurRadius: 10.0,
//                              offset: Offset(-5.0, 5.0),
//                            ),
//                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Medium',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Colors.white70,
//                          shadows: [
//                            Shadow(
//                              color: Colors.black54,
//                              blurRadius: 10.0,
//                              offset: Offset(5.0, 5.0),
//                            ),
//                            Shadow(
//                              color: Colors.black87,
//                              blurRadius: 10.0,
//                              offset: Offset(-5.0, 5.0),
//                            ),
//                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {},
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Hard',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Colors.white70,
//                          shadows: [
//                            Shadow(
//                              color: Colors.black54,
//                              blurRadius: 10.0,
//                              offset: Offset(5.0, 5.0),
//                            ),
//                            Shadow(
//                              color: Colors.black87,
//                              blurRadius: 10.0,
//                              offset: Offset(-5.0, 5.0),
//                            ),
//                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.white24,
    );
  }
}
