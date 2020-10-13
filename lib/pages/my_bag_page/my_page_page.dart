import 'package:flutter/material.dart';

class MyBagPage extends StatefulWidget {
  @override
  _MyBagPageState createState() => _MyBagPageState();
}

class _MyBagPageState extends State<MyBagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Bag"),
        backgroundColor: Colors.blue,
      ),
      body: Container(child: Text("My Bag")),
    );
  }
}
