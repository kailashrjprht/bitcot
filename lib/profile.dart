import 'dart:ui';

import 'package:flutter/material.dart';

class Profilepage extends StatefulWidget {
  const Profilepage({Key? key}) : super(key: key);

  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.purple,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: size.height * 0.090,
            ),
            Text(
              "Profile Details",
              style: TextStyle(fontSize: 24, color: Colors.white),
            ),
            SizedBox(
              height: size.height * 0.030,
            ),
            Center(
              child: CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("assets/kailash.PNG"),
                backgroundColor: Colors.transparent,
              ),
            ),
            SizedBox(
              height: size.height * 0.060,
            ),
            Column(
              // crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * 1.9,
                  height: size.height * 0.65,
                  decoration: BoxDecoration(
                      color: Colors.black87.withOpacity(0.4),
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(40),
                          topRight: Radius.circular(40))),
                  child: Column(
                    children: [
                      SizedBox(
                        height: size.height * 00.10,
                      ),
                      Container(
                        width: size.width * 0.9,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.name,
                          // onSubmitted: ,
                          decoration: InputDecoration(
                            // focusColor: Colors.white,
                            hintText: "name",
                            fillColor: Colors.white,
                            filled: true,
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(20, 13, 20, 15),
                            // prefixText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.03,
                      ),
                      Container(
                        width: size.width * 0.9,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.name,
                          // onSubmitted: ,
                          decoration: InputDecoration(
                            // focusColor: Colors.white,
                            hintText: "Date of birth",
                            fillColor: Colors.white,
                            filled: true,
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(20, 13, 20, 15),
                            // prefixText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.03,
                      ),
                      Container(
                        width: size.width * 0.9,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.name,
                          // onSubmitted: ,
                          decoration: InputDecoration(
                            // focusColor: Colors.white,
                            hintText: "email address",
                            fillColor: Colors.white,
                            filled: true,
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(20, 13, 20, 15),
                            // prefixText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.03,
                      ),
                      Container(
                        width: size.width * 0.9,
                        child: TextField(
                          style: TextStyle(color: Colors.black),
                          keyboardType: TextInputType.name,
                          // onSubmitted: ,
                          decoration: InputDecoration(
                            // focusColor: Colors.white,
                            hintText: "mobile number",
                            fillColor: Colors.white,
                            filled: true,
                            isCollapsed: true,
                            contentPadding: EdgeInsets.fromLTRB(20, 13, 20, 15),
                            // prefixText: "",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(30.0),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: size.height * 00.03,
                      ),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(20),
                        child: Container(
                          width: 150,
                          height: 40,
                          color: Colors.white,
                          child: RaisedButton(
                            color: Colors.white,
                            onPressed: () {
                              // Navigator.of(context).pushReplacement(MaterialPageRoute(
                              //     builder: (BuildContext context) => Homepage()));
                            },
                            child: Text(
                              " save",
                              style:
                                  TextStyle(color: Colors.purple, fontSize: 20),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )

                // Text(
                //   "Name    : kailash.D",
                //   style: TextStyle(fontSize: 18),
                // ),
                // SizedBox(
                //   height: size.height * 0.020,
                // ),
                // Text(
                //   "Email    : krajpurohit3457@gmail.com",
                //   style: TextStyle(fontSize: 18),
                // ),
                // SizedBox(
                //   height: size.height * 0.020,
                // ),
                // Text(
                //   "Number : 7904198101",
                //   style: TextStyle(fontSize: 18),
                // ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
