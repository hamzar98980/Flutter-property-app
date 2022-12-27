import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:proj/utils/colors_comp.dart';

import '../utils/text_comp.dart';

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

class Sections extends StatelessWidget {
  const Sections({super.key});

  @override
  Widget build(BuildContext context) {
    List sections = [
      'Home',
      'Apartment',
      'Plot',
      'Floor',
      'Banglows',
    ];
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 8, 8, 5),
            child: Container(
              width: MediaQuery.of(context).size.width * 1,
              height: MediaQuery.of(context).size.height * 0.05,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: sections.length,
                itemBuilder: (context, i) {
                  return Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        padding: EdgeInsets.fromLTRB(13, 10, 0, 0),
                        width: MediaQuery.of(context).size.width * 0.3,
                        height: MediaQuery.of(context).size.height * 0.05,
                        decoration: BoxDecoration(
                            color: (sections[i] == "Home")
                                ? Color(colorconst.primarycolor)
                                : Color(colorconst.boxfill),
                            borderRadius: BorderRadius.circular(8)),
                        child: Text(
                          sections[i],
                          style: (sections[i] == 'Home')
                              ? TextStyle(color: Colors.white)
                              : TextStyle(
                                  fontWeight: FontWeight.w500,
                                  color: Color(colorconst.primarycolor)),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      )
                    ],
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}

class Prop extends StatelessWidget {
  const Prop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.37,
            width: MediaQuery.of(context).size.width * 0.85,
            decoration: BoxDecoration(
                color: Color(colorconst.primarycolor),
                borderRadius: BorderRadius.circular(15)),
            child: Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      Stack(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width * 0.85,
                            height: MediaQuery.of(context).size.width * 0.41,
                            decoration: BoxDecoration(
                              color: Color(colorconst.boxfill),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
                              child: Image.asset(
                                "assets/Images/house1.jpg",
                                fit: BoxFit.fill,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(19, 8, 0, 0),
                        child: Text(
                          Text_comp.crhouse,
                          style: const TextStyle(
                            fontSize: 15,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.fromLTRB(19, 3, 0, 0),
                        child: Text(
                          Text_comp.address,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(255, 255, 255, 0.50)),
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(19, 8, 0, 0),
                            child: Image.asset("assets/Images/bed1.png"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 6, 0, 0),
                        child: Text(
                          Text_comp.bed4,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(255, 255, 255, 0.50)),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(19, 8, 0, 0),
                            child: Image.asset("assets/Images/bath.png"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 6, 0, 0),
                        child: Text(
                          Text_comp.bath4,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(255, 255, 255, 0.50)),
                        ),
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.fromLTRB(19, 8, 0, 0),
                            child: Image.asset("assets/Images/garage.png"),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 6, 0, 0),
                        child: Text(
                          Text_comp.garage,
                          style: const TextStyle(
                              fontSize: 10,
                              color: Color.fromRGBO(255, 255, 255, 0.50)),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
