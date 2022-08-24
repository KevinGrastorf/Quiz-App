import 'package:flutter/material.dart';

//Packages first, then routes

class Question extends StatelessWidget {
  final String? questionText;

  Question(this.questionText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Text(
        questionText!,
        style: TextStyle(
          fontSize: 35,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }
}
