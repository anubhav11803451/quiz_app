import 'dart:convert';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:quizapp/model/quiz.dart';


class MainScreen extends StatelessWidget {
//  final String url_h = "https://opentdb.com/api.php?amount=20&difficulty=hard&type=multiple";
//  final String url_m = "https://opentdb.com/api.php?amount=20&difficulty=medium&type=multiple";
//  final String url_e = "https://opentdb.com/api.php?amount=20&difficulty=easy&type=multiple";
  final String url;
  MainScreen({this.url});
  Quiz quiz;
  List<Results> results;

  @override
  Widget build(BuildContext context) {
    Future<void> fetchQuestions() async {
      var response = await http.get(url);
      var jsonData = jsonDecode(response.body);
      quiz = Quiz.fromJson(jsonData);
      results = quiz.results;
    }

    return Scaffold(
      appBar: AppBar(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        title: Text(
          "Triva",
          style: TextStyle(
              color: Colors.white,
              fontSize: 25.0,
              fontFamily: "BalooBhaina2",
              fontWeight: FontWeight.bold),
        ),
        backgroundColor: Colors.transparent,
        centerTitle: true,
      ),
      body: RefreshIndicator(
        onRefresh: fetchQuestions,
        backgroundColor: Colors.black,
        child: FutureBuilder(
          future: fetchQuestions(),
          builder: (BuildContext context, AsyncSnapshot snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Container(
                child: getQuestionList(),
              );
            } else {
              return Center(
                child: CircularProgressIndicator(),
              );
            }
          },
        ),
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {},
        tooltip: 'Tips',
        child: new Icon(
          Icons.lightbulb_outline,
          color: Colors.yellow,
        ),
        backgroundColor: Colors.black54,
      ),
      backgroundColor: Color(0xff2b2b2d),
    );
  }

  ListView getQuestionList() {
    return ListView.builder(
      itemCount: results.length,
      itemBuilder: (BuildContext context, int index) {
        return Card(
          elevation: 2,
          color: Color(0xffb4b4b6),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
          child: ExpansionTile(
            leading: Icon(
              Icons.question_answer,
              size: 30,
              color: Color(0xff2c2c2e),
            ),
            title: ListTile(
              title: Text(
                results[index].question,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "BalooBhaina2",
                    color: Colors.black),
              ),
              subtitle: Text(results[index].category,
                  style: TextStyle(
                      fontStyle: FontStyle.italic, fontFamily: "BalooBhaina2")),
            ),
            children: results[index].allAnswers.map((option) {
              return AnswerWidget(results, index, option);
            }).toList(),
          ),
        );
      },
    );
  } //getQuestion
} //MainScreen State

class AnswerWidget extends StatefulWidget {
  final List<Results> results;
  final int index;
  final String option;

  AnswerWidget(this.results, this.index, this.option);

  @override
  _AnswerWidgetState createState() => _AnswerWidgetState();
}

class _AnswerWidgetState extends State<AnswerWidget> {
  Color tick;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        setState(() {
          if (widget.option == widget.results[widget.index].correctAnswer) {
            tick = Colors.green;
          } else {
            tick = Colors.red;
          }
        });
      },
      title: Text(
        widget.option,
        textAlign: TextAlign.center,
        style: TextStyle(color: tick, fontFamily: "BalooBhaina2"),
      ),
    );
  }
}
