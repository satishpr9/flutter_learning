import 'package:Demo/Bg_Image.dart';
import 'package:Demo/page/HomePage.dart';
import 'package:Demo/utils/constaint.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("LoginPage"),
        
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          BgImage(),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: SingleChildScrollView(
                child: Card(
                  child: Column(children: <Widget>[
                    Form(
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          children: <Widget>[
                            TextFormField(
                              decoration: InputDecoration(
                                  labelText: "username",
                                  hintText: "Enter Your Username"),
                            ),
                            SizedBox(
                              height: 15,
                            ),
                            TextFormField(
                              obscureText: true,
                              decoration: InputDecoration(
                                  hintText: "Enter Your Password",
                                  labelText: "password"),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    RaisedButton(
                      onPressed: () {
                        Constaint.prefs.setBool("loggedIn", true);
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Homepage()));
                      },
                      child: Text("sign in"),
                      color: Colors.orange,
                      textColor: Colors.white,
                    ),
                  ]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
