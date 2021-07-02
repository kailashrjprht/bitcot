import 'dart:ui';

import 'package:bitcot/homepage.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Loginpage extends StatefulWidget {
  @override
  _LoginpageState createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
//controller
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

//  local storing function

  late SharedPreferences logindata;
  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    check_if_already_login();
  }

  void check_if_already_login() async {
    logindata = await SharedPreferences.getInstance();
    newuser = (logindata.getBool('login') ?? true);
    print(newuser);
    if (newuser == false) {
      Navigator.pushReplacement(
          context, new MaterialPageRoute(builder: (context) => Homepage()));
    }
  }

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    email.dispose();
    pass.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Text(
              "Welcome To Bitcot",
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
          ),
          SizedBox(
            height: size.height * 0.020,
          ),
          Container(
            height: size.height * 0.3,
            width: size.width * 0.8,
            color: Colors.transparent,
            child: Column(
              children: [
                TextField(
                  keyboardType: TextInputType.emailAddress,
                  // onSubmitted: ,
                  controller: email,
                  decoration: InputDecoration(
                    hintText: "Email Address",

                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(12),
                    // prefixText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                TextField(
                  // selectionHeightStyle: BoxHeightStyle.tight,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: true,
                  controller: pass,
                  // onSubmitted: ,
                  decoration: InputDecoration(
                    hintText: "Password",
                    isCollapsed: true,
                    contentPadding: EdgeInsets.all(12),
                    // prefixText: "",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(30.0),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * 0.020,
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Container(
                    width: size.width * 0.4,
                    height: size.height * 0.05,
                    color: Colors.purple,
                    child: RaisedButton(
                      color: Colors.purple,
                      onPressed: () {
                        String username = email.text;
                        String password = pass.text;
                        if (username != '' && password != '') {
                          print('Successfull');
                          logindata.setBool('login', false);
                          logindata.setString(
                            'username',
                            username,
                          );
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Homepage()));
                        }
                      },
                      child: Text(
                        " Login",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
