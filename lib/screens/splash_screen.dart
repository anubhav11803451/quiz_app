import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:quizapp/homescreen.dart';

class splashscreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 3,
      navigateAfterSeconds: new homescreen(),
      image: new Image.asset("assets/logo/quiz1.png"),
//      backgroundGradient: new LinearGradient(colors: [Colors.cyan, Colors.blue], begin: Alignment.topLeft, end: Alignment.bottomRight),
      backgroundColor: Color(0xff2b2b2d),
      styleTextUnderTheLoader: new TextStyle(),
      photoSize: 100.0,
//      onClick: ()=>print("Flutter Egypt"),
      loaderColor: Color(0xffb4b4b4),
    );
  }
}
