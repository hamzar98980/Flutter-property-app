import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:proj/utils/colors_comp.dart';
import 'package:proj/utils/text_comp.dart';

import '../components/alert.dart';

class Property extends StatelessWidget {
  const Property({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              Text_comp.locat,
              style: const TextStyle(
                color: Colors.grey,
                fontSize: 13,
              ),
            ),
            Text(
              Text_comp.locat2,
              style: TextStyle(
                color: Color(colorconst.primarycolor),
                fontSize: 17,
              ),
            )
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.fromLTRB(15, 15, 15, 5),
            child: CircleAvatar(
                backgroundImage: AssetImage("assets/Images/user4.jpg")),
          ),
        ],
      ),
      body: Container(
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 8, 8, 5),
                  child: Text(
                    Text_comp.discover,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 27,
                        color: Color(colorconst.primarycolor)),
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 2, 8, 5),
                  child: Text(
                    Text_comp.sutable,
                    style: TextStyle(
                        fontWeight: FontWeight.w500,
                        fontSize: 27,
                        color: Color(colorconst.primarycolor)),
                  ),
                ),
              ],
            ),
            Sections(),
          ],
        ),
      ),
    );
  }
}
