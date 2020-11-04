import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: "Satish Pandey",
    home: Homepage(),
  ));
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Container(child: Center(child: Text("Satish Pandey")),),
    );
  }
}
