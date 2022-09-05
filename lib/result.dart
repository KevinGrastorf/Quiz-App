import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String? get resultPhrase {
    String? resultText;
    if (resultScore >= 23) {
      resultText = 'You are amazing!';
    } else if (resultScore >= 17 && resultScore < 23) {
      resultText = 'Ya did good, kid.';
    } else if (resultScore >= 0 && resultScore < 17) {
      resultText = 'No worries.';
    } else if (resultScore < 0) {
      resultText = 'What were you thinking?';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      padding: EdgeInsets.fromLTRB(0, 0, 0, 100),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resultPhrase!,
              style: TextStyle(
                fontSize: 50,
                color: Colors.purple[700],
              ),
              textAlign: TextAlign.center,
            ),
            Divider(
              height: 50,
            ),
            Container(
              width: 250,
              height: 100,
              margin: EdgeInsets.all(20),
              child: ElevatedButton(
                // padding: EdgeInsets.all(50),
                // shape: RoundedRectangleBorder(
                //   borderRadius: BorderRadius.circular(25.0),
                //   side: BorderSide(color: Colors.purple[100]!, width: 7),
                // ),
                // color: Colors.purple,
                child: Text(
                  'Reset Quiz',
                  style: TextStyle(color: Colors.white, fontSize: 30),
                  textAlign: TextAlign.center,
                ),
                onPressed: resetHandler as void Function()?,
              ),
            )
          ],
        ),
      ),
    );
  }
}
