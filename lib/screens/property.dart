import 'package:flutter/material.dart';
import 'package:proj/utils/colors_comp.dart';
import 'package:proj/utils/text_comp.dart';

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
                backgroundImage: NetworkImage(
                    "https://img.freepik.com/free-photo/portrait-white-man-isolated_53876-40306.jpg")),
          ),
        ],
      ),
      body: Container(
        child: Column(
            // children: [
            // Row(
            //   children: [
            //     Text(
            //       "data",
            //       style: TextStyle(fontSize: 20),
            //     )
            //   ],
            // )
            // ],
            ),
      ),
    );
  }
}
