import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDialog extends StatelessWidget {
  dynamic title;
  dynamic content;
  dynamic voidCallback;
  dynamic callback;
  dynamic actionText;

  // ignore: use_key_in_widget_constructors
  CustomDialog(this.title, this.content, this.callback,
      [this.actionText = "Reset"]);
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        // ignore: deprecated_member_use
        FlatButton(
          onPressed: callback,
          color: Colors.white,
          child: Text(actionText),
        )
      ],
    );
  }
}
