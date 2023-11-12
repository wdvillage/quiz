import 'package:flutter/foundation.dart';

class Question {
  late final String title;
  late final List<Map> answers;

  Question({
    required this.title,
    required this.answers,
  });

}

class QuestionData {
  final _data = [
    Question(
        title: "What is the largest country in the world by population?",
        answers: [
          { "answer": "India", },
          { "answer": "China", "isCorrect" : 1,},
          { "answer": "USA",},
          { "answer": "Indonesien",},
        ]
    ),
    Question(
        title: "What is the largest country in Africa by population?",
        answers: [
          { "answer": "Ethiopia",},
          { "answer": "Nigeria", "isCorrect" : 1, },
          { "answer": "Egypt",},
          { "answer": "Algeria",},
        ]
    ),
    Question(
        title: "Which country produces the most coffee in the world?",
        answers: [
          { "answer": "Columbia",},
          { "answer": "Indonesia",},
          { "answer": "Brazil", "isCorrect" : 1, },
          { "answer": "Vietnam",},
        ]
    ),
    Question(
        title: "What are the four Houses of Hogwarts called?",
        answers: [
          { "answer": "Gryffindor, Hufflepuff, Ravenclaw and Slytherin", "isCorrect" : 1, },
          { "answer": "Griffin, Raven, Elephant and Snake",},
          { "answer": "North, East, West and South",},
          { "answer": "Red, Blue, Green and Orange",},
        ]
    ),
    Question(
        title: "Which city is the capital of Benin?",
        answers: [
          { "answer": "Lome",},
          { "answer": "Porto-Novo", "isCorrect" : 1, },
          { "answer": "Berlin",},
          { "answer": "Delhi",},
        ]
    ),
  ];

  List<Question> get questions => [..._data];
}