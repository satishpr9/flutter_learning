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
        title: Text("Satish"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget> [
        Container(
          color: Colors.green,
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(8),
          
        ),
        Container(
          color: Colors.blue,
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(8),
        ),
        Container(
          color: Colors.yellow,
          height: 100,
          width: 100,
          padding: const EdgeInsets.all(8),
        ),
          ],
        ),
      ),
    );
  }
}
