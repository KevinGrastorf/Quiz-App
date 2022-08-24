import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;
  final String? answerText;

  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      height: 100,
      margin: EdgeInsets.all(20),
      child: RaisedButton(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(25.0),
            side: BorderSide(color: Colors.purple[100]!, width: 7),
          ),
          color: Colors.purple,
          child: Text(
            answerText!,
            style: TextStyle(color: Colors.white, fontSize: 30),
            textAlign: TextAlign.center,
          ),
          onPressed: selectHandler as void Function()?),
    );
  }
}
