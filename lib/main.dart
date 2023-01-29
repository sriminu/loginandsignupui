import 'dart:async';
import 'package:flutter/material.dart';
import 'package:loginandsignupui/loginpage.dart';
import 'package:loginandsignupui/signuppage.dart';



void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: SpalshScreen()));
}

class SpalshScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SpalashScreen();
}

class _SpalashScreen extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Center(
                child: Text(
              'Hello There!',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 55),
            )),
            Text(
              'Automatic identify verification which enable you to verify your identity',
              style: TextStyle(
                fontSize: 10,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(100.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image(
                      image: AssetImage('assets/icons/wgo.png'),
                      height: 200,
                      width: 200,
                    ),
                    SizedBox(
                      height: 55,
                      width: 100,
                    ),
                    Padding(
                        padding: const EdgeInsets.all(20.0),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 10,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.purple,
                            textStyle: TextStyle(
                              color: Colors.lightGreenAccent,
                              fontSize: 15,
                              fontWeight: FontWeight.bold,
                            ),
                            shape: BeveledRectangleBorder(
                                borderRadius: BorderRadiusDirectional.all(
                                    Radius.circular(15))),
                            minimumSize: Size(900, 50),
                          ),
                        )),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: ElevatedButton(
                        onPressed: () { Navigator.push(context, MaterialPageRoute(builder: (context) => SignupPage()));

                        },
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 10,
                              color: Colors.black),
                        ),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blueAccent,
                          textStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                          ),
                          shape: BeveledRectangleBorder(
                              borderRadius: BorderRadiusDirectional.all(
                                  Radius.circular(15))),
                          minimumSize: Size(900, 50),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


