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
      body: Center(
        child: Container(
          padding: const EdgeInsets.all(20),
          alignment: Alignment.center,
          height: 100,
          width: 100,
          decoration: BoxDecoration(
            color: Colors.greenAccent,
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
              colors: [Colors.blue, Colors.red,] 
              ),
              boxShadow: [BoxShadow( 
                blurRadius: 5,
                color: Colors.grey[500],
                offset: Offset(2.0,3.0)
              )],
          ),
          child: Text("Satish",style: TextStyle(color:Colors.white,fontSize: 18 ),),
        ),
      ),
    );
  }
}
