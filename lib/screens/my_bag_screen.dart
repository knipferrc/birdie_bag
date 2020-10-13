import 'package:birdie_bag/widgets/custom_bottom_navigation.dart';
import 'package:flutter/material.dart';

class MyBagScreen extends StatefulWidget {
  @override
  _MyBagScreenState createState() => _MyBagScreenState();
}

class _MyBagScreenState extends State<MyBagScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
      ),
      body: Container(child: Text("My Bag")),
      bottomNavigationBar: CustomBottomNavigation(),
    );
  }
}
