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

class Txtfield extends StatelessWidget {
  String label;
  Txtfield({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 10, 5),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.07,
            width: MediaQuery.of(context).size.width * 0.9,
            decoration: BoxDecoration(
                color: Color(colorconst.textfilld),
                borderRadius: BorderRadius.circular(10)),
            child: TextFormField(
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                ),
                labelText: label,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
