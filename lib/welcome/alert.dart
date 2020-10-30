import 'package:flutter/material.dart';

// NOTE: This alert box contain 1 exit button currently
showAlertDialog({@required BuildContext context,Widget exitButton,Widget head,Widget content}) {
  // Create button
  Widget okButton = FlatButton(
    child: exitButton,
    onPressed: () {
      Navigator.of(context).pop();
    },
  );

  // Create AlertDialog
  AlertDialog alert = AlertDialog(
    title: head,
    content: content,
    actions: [
      okButton,
    ],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
