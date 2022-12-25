import 'package:flutter/material.dart';
import 'package:proj/screens/profile.dart';
import 'package:proj/utils/colors_comp.dart';
import 'package:proj/utils/text_comp.dart';

import '../components/alert.dart';

class Account extends StatefulWidget {
  const Account({super.key});

  @override
  State<Account> createState() => _AccountState();
}

class _AccountState extends State<Account> {
  bool isObscure = true;
  bool isChecked = true;

  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  loginacc() {
    if (email.text == 'admin@gmail.com' && pass.text == 'admin') {
      Navigator.of(context)
          .push(MaterialPageRoute(builder: (context) => Profile()));
    } else {
      BlurryDialog alert = BlurryDialog();

      showDialog(
        context: context,
        builder: (BuildContext context) {
          return alert;
        },
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: MediaQuery.of(context).size.height * 0.3,
                      child: Image.asset("assets/Images/img5.png"),
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    Text_comp.logintext,
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(24, 0, 24, 18),
                    child: Container(
                      child: TextFormField(
                        controller: email,
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Color(colorconst.textfilld),
                          prefixIcon: const Icon(
                            Icons.email,
                            color: Colors.black,
                          ),
                          border: const OutlineInputBorder(
                            borderRadius:
                                BorderRadius.all(Radius.circular(18.0)),
                          ),
                          labelText: 'Enter your Email',
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(24, 0, 24, 5),
                    child: TextFormField(
                      controller: pass,
                      obscureText: isObscure,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Color(colorconst.textfilld),
                        suffixIcon: IconButton(
                          icon: Icon(isObscure
                              ? Icons.visibility_off
                              : Icons.visibility),
                          onPressed: () {
                            setState(() {
                              isObscure = !isObscure;
                            });
                          },
                        ),
                        prefixIcon: const Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        border: const OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(18.0)),
                        ),
                        labelText: 'Enter your Password',
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Checkbox(
                          value: isChecked,
                          onChanged: (value) {
                            setState(() {
                              isChecked = value!;
                            });
                          },
                        ),
                        Text(Text_comp.remembertxt)
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 250,
                        child: ElevatedButton(
                          onPressed: () {
                            loginacc();
                          },
                          child: Text(Text_comp.signin),
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Color(colorconst.primarycolor)),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Text_comp.forgetpass,
                        style: TextStyle(color: Color(colorconst.primarycolor)),
                      ),
                    ),
                  ),
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        Text_comp.conwith,
                        style: TextStyle(color: Colors.grey[800]),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          width: 70,
                          height: 50,
                          child: Image.asset("assets/Images/google2.png"),
                          // color: Colors.black,
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 70,
                          height: 50,
                          child: Icon(
                            Icons.facebook,
                            color: Colors.blue,
                            size: 34,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Container(
                          width: 70,
                          height: 50,
                          child: Icon(
                            Icons.apple,
                            color: Colors.black,
                            size: 34,
                          ),
                          decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(10)),
                        ),
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}

// alertfun(){
//   return
// }

