import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final Function functionOnPressed;
  Answer(this.answerText, this.functionOnPressed);

  @override
  Widget build(BuildContext context) {
    return Container(
      width:double.infinity,
      child:
          ElevatedButton(
            // color: Colors.blue,
            // textColor: Colors.white,
            style: ElevatedButton.styleFrom(
              primary: Colors.orange,
              onPrimary: Colors.white
            ),
            child:Text(answerText),
            onPressed: functionOnPressed
          ),
    );
  }
}