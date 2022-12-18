import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:proj/utils/colors_comp.dart';
import 'package:proj/utils/text_comp.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Container(
                    // width: 50,
                    height: 320,
                    // color: Colors.red,
                    child: Image.asset("assets/Images/img3.png"),
                  ),
                )
              ],
            ),
            Text(
              Text_comp.letyouin,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    displaybutton(
                        Text_comp.confacebook,
                        const Icon(
                          Icons.facebook,
                          size: 24,
                        ))
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    displaybutton(
                      Text_comp.congoogle,
                      Image.asset("assets/Images/google.png"),
                    )
                  ],
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    displaybutton(
                        Text_comp.conapple,
                        const Icon(
                          Icons.apple,
                          size: 24,
                          color: Colors.black,
                        ))
                  ],
                ),
              ],
            ),
            Row(children: [
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 22.0),
                    child: const Divider(
                      color: Colors.grey,
                      height: 36,
                    )),
              ),
              Text("or"),
              Expanded(
                child: Container(
                    margin: const EdgeInsets.only(left: 15.0, right: 22.0),
                    child: const Divider(
                      color: Colors.grey,
                      height: 36,
                    )),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 250,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Text(Text_comp.sinpass),
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                          Color(colorconst.primarycolor)),
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
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
    );
  }
}

displaybutton(txt, bicon) {
  return Container(
    width: 250,
    child: OutlinedButton.icon(
      onPressed: () {},
      style: ButtonStyle(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(14.0),
        ),
      )),
      icon: bicon,
      label: Text(
        txt,
        style: const TextStyle(
          color: Colors.black,
        ),
      ),
    ),
  );
}
