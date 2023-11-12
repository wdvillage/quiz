import 'package:flutter/material.dart';
import 'package:quiz/widgets/result.dart';
import '../models/Question.dart';
import '../widgets/answer.dart';
import '../widgets/progress_bar.dart';
import '../widgets/quiz.dart';
import '../widgets/result.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final QuestionData data = QuestionData();
  int _countResult = 0;
  int _questionIndex = 0;

  List<Icon> _icons = [];

  void _clearState() => setState(() {
    _countResult = 0;
    _questionIndex = 0;
    _icons = [];
  });

  void _onChangeAnswer(bool isCorrect) => setState(() {
    if(isCorrect){
      _icons.add(const Icon(Icons.brightness_1, color: Color(0xffbd27ff)));
      _countResult++;
    } else {
      _icons.add(const Icon(Icons.brightness_1, color: Color(0xff000000)));
    }
    _questionIndex++;
  });
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Quiz"),
      ),
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: const BoxDecoration(
          color: Color(0xff2a375a),
          image: DecorationImage(
            image: AssetImage("assets/images/pic.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: <Widget>[
            ProgressBar(
             icons: _icons,
             count: _questionIndex,
             total: data.questions.length,
            ),

            _questionIndex < data.questions.length

            ? Quiz(
              index: _questionIndex,
              questionData: data,
              onChangeAnswer: _onChangeAnswer,
            )

            : Result(
              count: _countResult,
              total: data.questions.length,
              onClearState: _clearState,
            ),
          ],
        ),
      )

    );
  }
}