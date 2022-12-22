import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:proj/utils/colors_comp.dart';

class BlurryDialog extends StatelessWidget {
  TextStyle textStyle = TextStyle(color: Colors.black);

  @override
  Widget build(BuildContext context) {
    return BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 6, sigmaY: 6),
        child: AlertDialog(
          title: Text(
            "Error",
            style: textStyle,
          ),
          content: const Text(
            "Incorrect Email And Password",
            style: TextStyle(color: Colors.red),
          ),
          actions: <Widget>[
            ElevatedButton(
              child: Text("OK"),
              onPressed: () {
                Navigator.of(context).pop();
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Color(colorconst.primarycolor))),
            ),
          ],
        ));
  }
}
