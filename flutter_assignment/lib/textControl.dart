import 'package:flutter/material.dart';

class ChangeButton extends StatelessWidget {
  final Function changeText;

  ChangeButton(this.changeText);

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: Text('Change Text'),
      onPressed: changeText,
    );
  }
}
