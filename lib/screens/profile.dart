import 'package:flutter/material.dart';
import 'package:proj/components/alert.dart';
import 'package:proj/screens/property.dart';
import 'package:proj/utils/colors_comp.dart';

import '../utils/text_comp.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        title: const Text(
          "Fill your Profile",
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        leading: const BackButton(
          color: Colors.black, // <-- SEE HERE
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Stack(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          height: MediaQuery.of(context).size.height * 0.2,
                          width: MediaQuery.of(context).size.width * 0.4,
                          child: CircleAvatar(
                            backgroundImage:
                                AssetImage("assets/Images/bguser.png"),
                            backgroundColor: Color(colorconst.primarycolor),
                          ),
                        ),
                        Positioned(
                          bottom: 10,
                          // top: 0,
                          // left: 0,
                          right: 10,
                          child: Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.yellow[800],
                                borderRadius:
                                    BorderRadius.all(Radius.circular(15))),
                            child: Icon(Icons.edit,
                                color: Color(colorconst.primarycolor)),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Txtfield(
                label: 'Full Name',
              ),
              Txtfield(
                label: 'Nick Name',
              ),
              Txtfield(
                label: 'Date of Birth',
              ),
              Txtfield(
                label: 'Email',
              ),
              Txtfield(
                label: 'Gender',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 15),
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.of(context)
                            .popUntil((route) => route.isFirst);
                        Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Property()),
                        );
                      },
                      child: Text("Continue"),
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            Color(colorconst.primarycolor)),
                        shape:
                            MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(18.0),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
