import 'package:flutter/material.dart';
import '../widgets/answer.dart';

class Quiz extends StatelessWidget {
  final index;
  final questionData;
  final onChangeAnswer;

  Quiz({super.key, this.index, this.questionData, this.onChangeAnswer});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10.0),
          //alignment: Alignment.center,
          child: Text(
            questionData.questions[index].title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodySmall,
          ),
        ),
        ...questionData.questions[index].answers.map(
                (value) => Answer(
              title: value["answer"],
              onChangeAnswer: onChangeAnswer,
              isCorrect: value.containsKey("isCorrect") ? true : false,
            )
        ).toList(),
      ],
    );
  }
}
