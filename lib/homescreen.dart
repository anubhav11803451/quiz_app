import 'package:quizapp/screens/game_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Quiz App',
          style: TextStyle(
            color: Color(0xff2b2b2d),
            fontFamily: "BalooBhaina2",
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Color(0xff474747),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      body: Stack(
        children: <Widget>[
          Image.asset(
            "assets/images/1257738.jpg",
            height: 1000,
            fit: BoxFit.fill,
          ),
//          new Container(
//            decoration: BoxDecoration(
//              image: new DecorationImage(
//                image: new AssetImage("assets/images/bg5.jpg"),
//                fit: BoxFit.cover,
//              ),
//            ),
//          ),
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
                        'Start Quiz',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Color(0xffb4b4b4),
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 10.0,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black87,
                              blurRadius: 10.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MainScreen(
                                url:
                                    "https://opentdb.com/api.php?amount=30&type=multiple"),
                          ),
                        );
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'Levels',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Color(0xffb4b4b4),
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 10.0,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black87,
                              blurRadius: 10.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {
                        showAlertDialog(context);
                      },
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: RaisedButton(
                      child: Text(
                        'About Us',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Color(0xffb4b4b4),
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 10.0,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black87,
                              blurRadius: 10.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
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
                        'Share',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Color(0xffb4b4b4),
                          shadows: [
                            Shadow(
                              color: Colors.black54,
                              blurRadius: 10.0,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Colors.black87,
                              blurRadius: 10.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
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
                        'Exit',
                        style: TextStyle(
                          fontSize: 30,
                          fontFamily: "BalooBhaina2",
                          color: Color(0xff2b2b2d),
                          shadows: [
                            Shadow(
                              color: Color(0xff5c5c5c),
                              blurRadius: 10.0,
                              offset: Offset(5.0, 5.0),
                            ),
                            Shadow(
                              color: Color(0xff5c5c5c),
                              blurRadius: 10.0,
                              offset: Offset(-5.0, 5.0),
                            ),
                          ],
                        ),
                      ),
                      color: Colors.transparent,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50.0)),
                      onPressed: () {
                        SystemNavigator.pop();
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Color(0xff2b2b2d),
    );
  }
}

showAlertDialog(BuildContext context) {
  // set up the buttons
  Widget easyButton = FlatButton(
      child: Text(
        "Easy",
        style: TextStyle(
          fontFamily: "BalooBhaina2",
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => MainScreen(
                  url:
                      "https://opentdb.com/api.php?amount=20&difficulty=easy&type=multiple")),
        );
      });
  Widget mediumButton = FlatButton(
    child: Text(
      "Medium",
      style: TextStyle(
        fontFamily: "BalooBhaina2",
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MainScreen(
                url:
                    "https://opentdb.com/api.php?amount=20&difficulty=medium&type=multiple")),
      );
    },
  );
  Widget hardButton = FlatButton(
    child: Text(
      "Hard",
      style: TextStyle(
        fontFamily: "BalooBhaina2",
        fontWeight: FontWeight.bold,
      ),
    ),
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MainScreen(
                url:
                    "https://opentdb.com/api.php?amount=20&difficulty=hard&type=multiple")),
      );
    },
  );
  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    backgroundColor: Color(0xFFa7a7a7),
    title: Text(
      "Difficulty Level",
      style: TextStyle(
        fontFamily: "BalooBhaina2",
//        fontWeight: FontWeight.bold,
      ),
    ),
    content: Text(
      "Select the accordingly :",
      style: TextStyle(
        fontFamily: "BalooBhaina2",
        fontStyle: FontStyle.italic,
      ),
    ),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
    actions: <Widget>[
      easyButton,
      mediumButton,
      hardButton,
    ],
  );
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}

//color: const Color(Hex Code)
