import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int count;
  final int total;
  final VoidCallback onClearState;

  Result({super.key, required this.count, required this.total, required this.onClearState});

  @override
  Widget build(BuildContext context) {
    String msg = "";
    Widget img;

    if( 0 <= count && count <= 2 ){
      msg = "Unfortunately, there are not many correct answers.";
      img = Image.asset("assets/images/pic.jpg");
    } else if( 3 <= count && count <= 4 ){
      msg = "Just a little way to the goal!";
      img = Image.asset("assets/images/pic2.jpg");
    } else {
      msg = "Congratulations! All answers are correct.";
      img = Image.asset("assets/images/pic4.jpg");
    }
    return Container(
      padding: const EdgeInsets.all(20.0),
      margin: const EdgeInsets.symmetric(horizontal: 30.0),
      decoration: BoxDecoration(
          boxShadow: const [BoxShadow(
            color: Colors.black,
            blurRadius: 10.0,
            offset: Offset(1.0,1.0),
          ),
          ],
          borderRadius: BorderRadius.circular(10.0),
          gradient: const LinearGradient(colors: [
            Color(0xFF5337ff),
            Color(0xFF8131ff),
            Color(0xFFbd27ff),
          ])
      ),
      child: Column(
        children: <Widget>[
          Container(
            width: 120,
            height: 120,
            child: FittedBox(
              fit: BoxFit.contain,
              child: img,
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Container(
            child: Text(
              msg,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16.0, color: Colors.white),
            ),
          ),
          const Divider(
            color: Colors.white,
          ),
          Text(
              "Answered correctly $count from $total",
              style: const TextStyle(fontSize: 16.0, color: Colors.white),
          ),
          const Divider(
            color: Colors.white,
          ),
          TextButton(
              onPressed: onClearState,
              child: const Text(
                  "Go through quiz again",
                   style: TextStyle(fontSize: 16.0, color: Colors.white),
              ),
          )
        ],
      ),
    );
  }
}

