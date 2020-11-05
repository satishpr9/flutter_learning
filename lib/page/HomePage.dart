import 'package:flutter/material.dart';

import '../Bg_Image.dart';
import '../Drawer.dart';



class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  TextEditingController _nameController = TextEditingController();
  var myText = "Hello";
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome App"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Card(
            child: Column(
              children: <Widget>[
                BgImage(),
                SizedBox(
                  height: 12,
                ),
                Text(
                  myText,
                  style: TextStyle(fontSize: 20),
                ),
                SizedBox(
                  height: 12,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextField(
                    controller: _nameController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        hintText: "Enter SomeThing",
                        border: OutlineInputBorder(),
                        labelText: "Name"),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      drawer:MyDrawer(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          myText = _nameController.text;
          setState(() {});
        },
        child: Icon(Icons.refresh),
      ),
    );
  }
}
